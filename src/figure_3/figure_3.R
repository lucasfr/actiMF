# LICENSE

# This software is licensed under an MIT License.

# Copyright (c) 2018 Lucas G S França, Pedro Montoya, José Garcia Vivas Miranda.

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

# Authors: Lucas França(1,2), Pedro Montoya(3), José Garcia Vivas Miranda(1,2)

# 1 Department of Clinical and Experimental Epilepsy, UCL Queen Square Institute 
# of Neurology, University College London, London, United Kingdom

# 2 Department of Physics of the Earth and the Environment, Institute of Physics, 
# Federal University of Bahia, Salvador, Brazil

# 3 Research Institute of Health Sciences (IUNICS), University of the Balearic 
# Islands, Palma de Mallorca, Spain

# email address: lucas.franca.14@ucl.ac.uk, vivasm@gmail.com
# Website: https://lucasfr.github.io/

library(ggplot2)
library(cowplot)

slopes <- read.csv("slopes.csv")
slopes$group <- factor(slopes$group, 
                       levels = c("HM", "FM"), 
                       labels = c("Healthy", "Fibromyalgia"))

vplot <- ggplot(data = slopes, 
       aes(x = group, y = slope, fill = group)) + 
  geom_violin(trim=FALSE, 
              alpha = I(0.8)) + 
  scale_fill_manual(values = c("#2166ac", "#b2182b")) + 
  labs(x="Group", 
       y = "H exponent") +
  geom_boxplot(width=0.05, 
               fill="white", 
               colour = c("#2166ac", "#b2182b")) + 
  geom_jitter(position = position_jitter(0.4), 
              size = I(2)) + 
  theme_bw() + 
  theme(legend.title = element_blank(),
        legend.position = "none",
        legend.background = element_rect(colour = "transparent", 
                                         fill = "transparent"),
        axis.title.x=element_blank(), 
        text = element_text(size=18))

fm <- read.csv("FC03.txt.dfa", 
               sep = " ", 
               header = FALSE)

hm <- read.csv("HC10.txt.dfa", 
               sep = " ", 
               header = FALSE)

fm <- cbind(fm, rep("fm", length(fm[,1])))
names(fm) <- c("scale", "roughness", "group")
hm <- cbind(hm, rep("hm", length(hm[,1])))
names(hm) <- c("scale", "roughness", "group")

rness <- rbind(hm, fm)

rness$group <- factor(rness$group, 
                      levels = c("hm", "fm"),
                      labels = c("Healthy", "Fibromyalgia"))

rnessPlot <- ggplot(data = rness, 
       aes(x = scale, y = roughness, fill = group)) + 
  geom_point(aes(colour = group)) + 
  scale_colour_manual(values = c("#2166ac", "#b2182b")) + 
  theme_bw() + 
  theme(legend.title=element_blank(), 
        legend.position = c(0.215, 0.9), 
        legend.background = element_rect(colour = "transparent", 
                                         fill = "transparent"), 
        text = element_text(size=16)) + 
  xlab("log(Scale)") + 
  ylab("-log(Roughness)")

plot_grid(rnessPlot, vplot,labels = "AUTO", ncol = 2, align = 'h')
