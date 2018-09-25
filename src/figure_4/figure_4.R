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

figure_4 <- function(){
  
  ## HEALTHY ACTIVE
  
  spectra_hc_active <- NULL
  
  temp <- read.csv("data/S/hc/000_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("000",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/001_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("001",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/011_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("011",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/021_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("021",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/030_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("030",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/031_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("031",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/040_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("040",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/041_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("041",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/050_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("050",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/051_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("051",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/060_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("060",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/061_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("061",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/070_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("070",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/071_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("071",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/080_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("080",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/090_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("090",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/100_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("100",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/101_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("101",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/110_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("110",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/111_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("111",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/120_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("120",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/121_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("121",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/140_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("140",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/141_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("141",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/150_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("150",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/151_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("151",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  temp <- read.csv("data/S/hc/160_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("160",length(temp$alpha)))
  
  spectra_hc_active <- rbind(spectra_hc_active, spectraTemp)
  
  spectra_hc_active <- data.frame(spectra_hc_active)
  names(spectra_hc_active) <- c("alpha", "falpha", "ID")
  spectra_hc_active$alpha <- as.numeric(as.character(spectra_hc_active$alpha))
  spectra_hc_active$falpha <- as.numeric(as.character(spectra_hc_active$falpha))
  
  
  ## HEALTHY SLEEP
  
  spectra_hc_sleep <- NULL
  
  temp <- read.csv("data/S/hc/000_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("000",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/001_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("001",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/011_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("011",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/021_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("021",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/030_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("030",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/031_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("031",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/040_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("040",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/041_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("041",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/050_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("050",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/051_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("051",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/060_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("060",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/061_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("061",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/070_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("070",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/071_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("071",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/080_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("080",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/090_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("090",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/100_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("100",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/101_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("101",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/110_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("110",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/111_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("111",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/120_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("120",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/121_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("121",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/140_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("140",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/141_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("141",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/150_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("150",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/151_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("151",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  temp <- read.csv("data/S/hc/160_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt",
                   sep = " ",
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha",
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha,
                       temp$falpha,
                       rep("160",length(temp$alpha)))
  
  spectra_hc_sleep <- rbind(spectra_hc_sleep, spectraTemp)
  
  spectra_hc_sleep <- data.frame(spectra_hc_sleep)
  names(spectra_hc_sleep) <- c("alpha", "falpha", "ID")
  spectra_hc_sleep$alpha <- as.numeric(as.character(spectra_hc_sleep$alpha))
  spectra_hc_sleep$falpha <- as.numeric(as.character(spectra_hc_sleep$falpha))
  
  
  ## FIBROMYALGIA ACTIVE
  
  spectra_fm_active <- NULL
  
  temp <- read.csv("data/S/fm/500_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("500",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/501_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("501",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/510_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("510",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/511_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("511",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/520_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("520",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/521_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("521",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/530_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("530",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/531_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("531",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/541_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("541",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/551_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("551",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/560_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("560",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/561_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("561",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  temp <- read.csv("data/S/fm/570_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("570",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/571_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("571",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/580_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("580",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/581_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("581",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/600_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("600",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/601_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("601",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/610_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("610",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/611_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("611",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/620_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("620",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/621_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("621",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/630_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("630",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/631_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("631",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/640_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("640",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/641_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("641",length(temp$alpha)))
  
  spectra_fm_active <- rbind(spectra_fm_active, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/650_active._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
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
  
  temp <- read.csv("data/S/fm/500_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("500",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/501_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("501",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/510_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("510",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/511_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("511",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/520_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("520",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/521_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("521",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/530_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("530",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/531_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("531",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/541_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("541",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/551_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("551",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/560_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("560",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/561_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("561",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/570_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("570",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/571_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("571",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/580_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("580",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/581_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("581",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/600_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("600",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/601_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("601",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/610_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("610",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/611_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("611",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/620_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("620",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/621_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("621",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/630_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("630",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/631_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("631",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/640_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("640",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/641_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
                   sep = " ", 
                   header = FALSE)
  names(temp) <- c("alpha", "erralpha", "ralpha", 
                   "falpha", "errfalpha", "rfalpha")
  
  spectraTemp <- cbind(temp$alpha, 
                       temp$falpha, 
                       rep("641",length(temp$alpha)))
  
  spectra_fm_sleep <- rbind(spectra_fm_sleep, spectraTemp)
  
  
  temp <- read.csv("data/S/fm/650_sleep._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt", 
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
  
  
  hc_active <- ggplot(data = spectra_hc_active,
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
  
  
  hc_sleep <- ggplot(data = spectra_hc_sleep,
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
  
  a <- plot_grid(hc_active, 
                 hc_sleep, 
                 fm_active, 
                 fm_sleep, 
                 labels = "AUTO", 
                 ncol = 2, 
                 align = 'h')
  
  return(a)
  
}
