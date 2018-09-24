# LICENSE

# This software is licensed under an MIT License.

# Copyright (c) 2018 Lucas G S França, José Garcia Vivas Miranda.

# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
# DEALINGS IN THE SOFTWARE.

# Authors: Lucas França(1,2), José Garcia Vivas Miranda(1,2)

# 1 Department of Clinical and Experimental Epilepsy, UCL Queen Square Institute 
# of Neurology, University College London, London, United Kingdom

# 2 Institute of Physics, Federal University of Bahia, Salvador, Brazil

# email address: lucas.franca.14@ucl.ac.uk, vivasm@gmail.com
# Website: https://lucasfr.github.io/


rm(list = ls())

library(stringr)
library(boot)
library(reshape2)
library(ggplot2)

# LOADING FM PATIENTS DATA

fm <- read.csv2("../R/fm/resumDq.dat",sep="",header = FALSE)

patNames <- str_split_fixed(fm$V1, "_", 2)
fm$V1 <- NULL
fm <- cbind(patNames,fm)
names(fm) <- c("Pat",	"state", "+q", "-q", "Dmin", "EDmin",
               "RDmin", "Dmax", "EDmax", "RDmax", "Do", "EDo",
               "RDo", "D1", "ED1", "RD1", "D2", "ED2", "RD2",
               "qAMin", "qAMax", "Ao", "EAo", "RAo", "Amax",
               "EAmax", "RAmax", "Amin", "EAmin", "RAmin")

# LOADING HEALTHY INDIVIDUALS DATA

hm <- read.csv2("../R/hm/resumDq.dat",sep="",header = FALSE)

patNames <- str_split_fixed(hm$V1, "_", 2)
hm$V1 <- NULL
hm <- cbind(patNames,hm)
names(hm) <- c("Pat",	"state", "+q", "-q", "Dmin", "EDmin",
               "RDmin", "Dmax", "EDmax", "RDmax", "Do", "EDo",
               "RDo", "D1", "ED1", "RD1", "D2", "ED2", "RD2",
               "qAMin", "qAMax", "Ao", "EAo", "RAo", "Amax",
               "EAmax", "RAmax", "Amin", "EAmin", "RAmin")

# SPLITTING DATAFRAMES

fm_active <- fm[fm$state=="active.txt",]
fm_sleep <- fm[fm$state=="sleep.txt",]
hm_active <- hm[hm$state=="active.txt",]
hm_sleep <- hm[hm$state=="sleep.txt",]


# ESTIMATING PARABOLA RIGHT-SIDE

fm_active$rs <- as.numeric(as.character(fm_active$Amax)) - as.numeric(as.character(fm_active$Ao))
fm_sleep$rs <- as.numeric(as.character(fm_sleep$Amax)) - as.numeric(as.character(fm_sleep$Ao))
hm_active$rs <- as.numeric(as.character(hm_active$Amax)) - as.numeric(as.character(hm_active$Ao))
hm_sleep$rs <- as.numeric(as.character(hm_sleep$Amax)) - as.numeric(as.character(hm_sleep$Ao))


# DIFFERENCES BETWEEN STATES FOR PARABOLA RIGHT-SIDE

diff_fm_rs <- fm_active$rs - fm_sleep$rs
diff_hm_rs <- hm_active$rs - hm_sleep$rs

diff_rs <- data.frame(diff_fm_rs, diff_hm_rs)
names(diff_rs) <- c("Fibromyalgia", "Healthy")

diff_rs <- melt(diff_rs)

leg1 <- paste(expression(p > 0.05))
leg2 <- paste(expression(p < 0.05))

ggplot(data = diff_rs, 
       aes(x = variable, y = value, fill = variable)) + 
  geom_violin(trim=FALSE, 
              alpha = I(0.8)) + 
  scale_fill_manual(values = c("#b2182b","#2166ac"), 
                    labels = c(leg1, 
                               leg2)) + 
  labs(x="Group", 
       y = "Paired difference (Awake - Sleep)") +
  geom_boxplot(width=0.05, 
               fill="white", 
               colour = c("#b2182b","#2166ac")) + 
  geom_jitter(position = position_jitter(0.4), 
              size = I(3), 
              aes(shape = variable)) + 
  scale_shape_manual(values = c(16, 17), 
                     labels = c(leg1, 
                                leg2))+
  theme_bw() + 
  theme(legend.title = element_blank(),
        legend.position = c(0.11, 0.92),
        legend.background = element_rect(colour = "transparent", 
                                         fill = "transparent"),
        axis.title.x=element_blank(), 
        text = element_text(size=18))
