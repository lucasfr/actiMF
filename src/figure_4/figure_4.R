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


rm(list = ls())

library(ggplot2)
library(cowplot)
library(RColorBrewer)


## HEALTHY ACTIVE

spectra_hm_active <- NULL

temp <- read.csv("../S/hm/000_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                      temp$falpha, 
                      rep("000",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/001_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("001",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/011_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("011",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/021_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("021",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/030_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("030",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/031_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("031",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/040_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("040",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/041_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("041",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/050_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("050",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/051_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("051",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/060_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("060",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/061_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("061",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/070_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("070",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/071_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("071",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/080_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("080",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/090_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("090",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/100_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("100",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/101_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("101",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/110_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("110",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/111_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("111",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/120_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("120",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/121_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("121",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/140_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("140",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/141_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("141",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/150_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("150",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/151_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("151",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

temp <- read.csv("../S/hm/160_active_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("160",length(temp$alpha)))

spectra_hm_active <- rbind(spectra_hm_active, spectraTemp)

spectra_hm_active <- data.frame(spectra_hm_active)
names(spectra_hm_active) <- c("alpha", "falpha", "ID")
spectra_hm_active$alpha <- as.numeric(as.character(spectra_hm_active$alpha))
spectra_hm_active$falpha <- as.numeric(as.character(spectra_hm_active$falpha))


## HEALTHY SLEEP

spectra_hm_sleep <- NULL

temp <- read.csv("../S/hm/000_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("000",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/001_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("001",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/011_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("011",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/021_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("021",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/030_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("030",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/031_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("031",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/040_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("040",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/041_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("041",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/050_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("050",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/051_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("051",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/060_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("060",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/061_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("061",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/070_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("070",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/071_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("071",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/080_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("080",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/090_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("090",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/100_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("100",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/101_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("101",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/110_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("110",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/111_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("111",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/120_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("120",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/121_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("121",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/140_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("140",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/141_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("141",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/150_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("150",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/151_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("151",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

temp <- read.csv("../S/hm/160_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa",
                 sep = " ",
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha",
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha,
                     temp$falpha,
                     rep("160",length(temp$alpha)))

spectra_hm_sleep <- rbind(spectra_hm_sleep, spectraTemp)

spectra_hm_sleep <- data.frame(spectra_hm_sleep)
names(spectra_hm_sleep) <- c("alpha", "falpha", "ID")
spectra_hm_sleep$alpha <- as.numeric(as.character(spectra_hm_sleep$alpha))
spectra_hm_sleep$falpha <- as.numeric(as.character(spectra_hm_sleep$falpha))


## FIBROMYALGIA ACTIVE

spectra_fm_active <- NULL

temp <- read.csv("../S/fm/500_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("500",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/501_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("501",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/510_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("510",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/511_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("511",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/520_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("520",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/521_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("521",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/530_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("530",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/531_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("531",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/541_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("541",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/551_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("551",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/560_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("560",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/561_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("561",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)

temp <- read.csv("../S/fm/570_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("570",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/571_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("571",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/580_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("580",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/581_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("581",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/600_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("600",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/601_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("601",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/610_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("610",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/611_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("611",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/620_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("620",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/621_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("621",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/630_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("630",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/631_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("631",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/640_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("640",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/641_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("641",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)


temp <- read.csv("../S/fm/650_active_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("650",length(temp$alpha)))

spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)

spectra_fm_active <- data.frame(spectra_fm_active)
names(spectra_fm_active) <- c("alpha", "falpha", "ID")
spectra_fm_active$alpha <- as.numeric(as.character(spectra_fm_active$alpha))
spectra_fm_active$falpha <- as.numeric(as.character(spectra_fm_active$falpha))


## FIBROMYALGIA SLEEP

spectra_fm_sleep <- NULL

temp <- read.csv("../S/fm/500_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("500",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/501_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("501",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/510_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("510",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/511_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("511",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/520_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("520",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/521_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("521",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/530_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("530",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/531_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("531",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/541_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("541",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/551_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("551",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/560_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("560",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/561_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("561",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/570_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("570",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/571_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("571",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/580_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("580",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/581_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("581",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/600_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("600",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/601_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("601",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/610_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("610",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/611_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("611",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/620_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("620",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/621_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("621",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/630_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("630",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/631_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("631",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/640_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("640",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/641_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("641",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)


temp <- read.csv("../S/fm/650_sleep_-25_25_0.3_9_0.7_0.7_S_2.tfa", 
                 sep = " ", 
                 header = FALSE)
names(temp) <- c("alpha", "erralpha", "ralpha", 
                 "falpha", "errfalpha", "rfalpha")

spectraTemp <- cbind(temp$alpha, 
                     temp$falpha, 
                     rep("650",length(temp$alpha)))

spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)

spectra_fm_sleep <- data.frame(spectra_fm_sleep)
names(spectra_fm_sleep) <- c("alpha", "falpha", "ID")
spectra_fm_sleep$alpha <- as.numeric(as.character(spectra_fm_sleep$alpha))
spectra_fm_sleep$falpha <- as.numeric(as.character(spectra_fm_sleep$falpha))


hm_active <- ggplot(data = spectra_hm_active,
       aes(x = alpha,
           y = falpha,
           group = ID,
           colour = ID)) +
  geom_point() +
  theme_bw() + 
  theme(legend.title = element_blank(), 
        legend.position = "none", 
        text = element_text(size=16)) +
  xlim(0.5, 3.5) + 
  ylim(0, 1) + 
  xlab(expression(alpha)) + 
  ylab(expression("f("*alpha*")")) +
  scale_color_manual(values = 
                       colorRampPalette(brewer.pal(6, "Paired"))(27))


hm_sleep <- ggplot(data = spectra_hm_sleep,
                    aes(x = alpha,
                        y = falpha,
                        group = ID,
                        colour = ID)) +
  geom_point() +
  theme_bw() + 
  theme(legend.title = element_blank(), 
        legend.position = "none", 
        text = element_text(size=16)) +
  xlim(0.5, 3.5) + 
  ylim(0, 1) + 
  xlab(expression(alpha)) + 
  ylab(expression("f("*alpha*")")) +
  scale_color_manual(values = 
                       colorRampPalette(brewer.pal(6, "Paired"))(27))


fm_active <- ggplot(data = spectra_fm_active,
                    aes(x = alpha,
                        y = falpha,
                        group = ID,
                        colour = ID)) +
  geom_point() +
  theme_bw() + 
  theme(legend.title = element_blank(), 
        legend.position = "none", 
        text = element_text(size=16)) +
  xlim(0.5, 3.5) + 
  ylim(0, 1) + 
  xlab(expression(alpha)) + 
  ylab(expression("f("*alpha*")")) +
  scale_color_manual(values = 
                       colorRampPalette(brewer.pal(6, "Paired"))(27))

fm_sleep <- ggplot(data = spectra_fm_sleep,
                    aes(x = alpha,
                        y = falpha,
                        group = ID,
                        colour = ID)) +
  geom_point() +
  theme_bw() + 
  theme(legend.title = element_blank(), 
        legend.position = "none", 
        text = element_text(size=16)) +
  xlim(0.5, 3.5) + 
  ylim(0, 1) + 
  xlab(expression(alpha)) + 
  ylab(expression("f("*alpha*")")) +
  scale_color_manual(values = 
                       colorRampPalette(brewer.pal(6, "Paired"))(27))

plot_grid(hm_active, 
          hm_sleep, 
          fm_active, 
          fm_sleep, 
          labels = "AUTO", 
          ncol = 2, 
          align = 'h')
