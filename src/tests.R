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

tests <- function(){
  
  testRes <- list()
  
  # LOADING FM PATIENTS DATA
  
  fm <- read.csv2("data/R/fm/resumDq.dat",sep="",header = FALSE)
  
  patNames <- str_split_fixed(fm$V1, "_", 2)
  fm$V1 <- NULL
  fm <- cbind(patNames,fm)
  names(fm) <- c("Pat",	"state", "+q", "-q", "Dmin", "EDmin",
                 "RDmin", "Dmax", "EDmax", "RDmax", "Do", "EDo",
                 "RDo", "D1", "ED1", "RD1", "D2", "ED2", "RD2",
                 "qAMin", "qAMax", "Ao", "EAo", "RAo", "Amax",
                 "EAmax", "RAmax", "Amin", "EAmin", "RAmin")
  
  # LOADING HEALTHY INDIVIDUALS DATA
  
  hc <- read.csv2("data/R/hc/resumDq.dat",sep="",header = FALSE)
  
  patNames <- str_split_fixed(hc$V1, "_", 2)
  hc$V1 <- NULL
  hc <- cbind(patNames,hc)
  names(hc) <- c("Pat",	"state", "+q", "-q", "Dmin", "EDmin",
                 "RDmin", "Dmax", "EDmax", "RDmax", "Do", "EDo",
                 "RDo", "D1", "ED1", "RD1", "D2", "ED2", "RD2",
                 "qAMin", "qAMax", "Ao", "EAo", "RAo", "Amax",
                 "EAmax", "RAmax", "Amin", "EAmin", "RAmin")
  
  # SPLITTING DATAFRAMES
  
  fm_active <- fm[fm$state=="active.txt",]
  fm_sleep <- fm[fm$state=="sleep.txt",]
  hc_active <- hc[hc$state=="active.txt",]
  hc_sleep <- hc[hc$state=="sleep.txt",]
  
  # ESTIMATING PARABOLA RIGHT-SIDE
  
  fm_active$rs <- as.numeric(as.character(fm_active$Amax)) - as.numeric(as.character(fm_active$Ao))
  fm_sleep$rs <- as.numeric(as.character(fm_sleep$Amax)) - as.numeric(as.character(fm_sleep$Ao))
  hc_active$rs <- as.numeric(as.character(hc_active$Amax)) - as.numeric(as.character(hc_active$Ao))
  hc_sleep$rs <- as.numeric(as.character(hc_sleep$Amax)) - as.numeric(as.character(hc_sleep$Ao))
  
  # ESTIMATING PARABOLA LEFT-SIDE
  
  fm_active$ls <- as.numeric(as.character(fm_active$Ao)) - as.numeric(as.character(fm_active$Amin))
  fm_sleep$ls <- as.numeric(as.character(fm_sleep$Ao)) - as.numeric(as.character(fm_sleep$Amin))
  hc_active$ls <- as.numeric(as.character(hc_active$Ao)) - as.numeric(as.character(hc_active$Amin))
  hc_sleep$ls <- as.numeric(as.character(hc_sleep$Ao)) - as.numeric(as.character(hc_sleep$Amin))
  
  # ESTIMATING PARABOLA WIDTH
  
  fm_active$w <- as.numeric(as.character(fm_active$Amax)) - as.numeric(as.character(fm_active$Amin))
  fm_sleep$w <- as.numeric(as.character(fm_sleep$Amax)) - as.numeric(as.character(fm_sleep$Amin))
  hc_active$w <- as.numeric(as.character(hc_active$Amax)) - as.numeric(as.character(hc_active$Amin))
  hc_sleep$w <- as.numeric(as.character(hc_sleep$Amax)) - as.numeric(as.character(hc_sleep$Amin))
  
  
  # DIFFERENCES BETWEEN STATES FOR PARABOLA RIGHT-SIDE
  
  diff_fm_rs <- fm_active$rs - fm_sleep$rs
  diff_hc_rs <- hc_active$rs - hc_sleep$rs
  
  # DIFFERENCES BETWEEN STATES FOR PARABOLA LEFT-SIDE
  
  diff_fm_ls <- fm_active$ls - fm_sleep$ls
  diff_hc_ls <- hc_active$ls - hc_sleep$ls
  
  # DIFFERENCES BETWEEN STATES FOR PARABOLA RIGHT-SIDE
  
  diff_fm_w <- fm_active$w - fm_sleep$w
  diff_hc_w <- hc_active$w - hc_sleep$w
  
  # DIFFERENCES BETWEEN STATES FOR Do MEASURE
  fm_active$Do <- as.numeric(fm_active$Do)
  fm_sleep$Do <- as.numeric(fm_sleep$Do)
  hc_active$Do <- as.numeric(hc_active$Do)
  hc_sleep$Do <- as.numeric(hc_sleep$Do)
  
  diff_fm_Do <- fm_active$Do - fm_sleep$Do
  diff_hc_Do <- hc_active$Do - hc_sleep$Do
  
  # DIFFERENCES BETWEEN STATES FOR D1 MEASURE
  fm_active$D1 <- as.numeric(fm_active$D1)
  fm_sleep$D1 <- as.numeric(fm_sleep$D1)
  hc_active$D1 <- as.numeric(hc_active$D1)
  hc_sleep$D1 <- as.numeric(hc_sleep$D1)
  
  diff_fm_D1 <- fm_active$D1 - fm_sleep$D1
  diff_hc_D1 <- hc_active$D1 - hc_sleep$D1
  
  # DIFFERENCES BETWEEN STATES FOR D2 MEASURE
  fm_active$D2 <- as.numeric(fm_active$D2)
  fm_sleep$D2 <- as.numeric(fm_sleep$D2)
  hc_active$D2 <- as.numeric(hc_active$D2)
  hc_sleep$D2 <- as.numeric(hc_sleep$D2)
  
  diff_fm_D2 <- fm_active$D2 - fm_sleep$D2
  diff_hc_D2 <- hc_active$D2 - hc_sleep$D2
  
  # STATISTICAL TESTS
  
  testRes$hc_test_rs_all <- t.test(hc_active$rs,hc_sleep$rs,paired=TRUE)
  testRes$fm_test_rs_all <- t.test(fm_active$rs,fm_sleep$rs,paired=TRUE)
  
  testRes$hc_test_Do_all <- t.test(hc_active$Do,hc_sleep$Do,paired=TRUE)
  testRes$fm_test_Do_all <- t.test(fm_active$Do,fm_sleep$Do,paired=TRUE)
  
  testRes$hc_test_D1_all <- t.test(hc_active$D1,hc_sleep$D1,paired=TRUE)
  testRes$fm_test_D1_all <- t.test(fm_active$D1,fm_sleep$D1,paired=TRUE)
  
  testRes$hc_test_D2_all <- t.test(hc_active$D2,hc_sleep$D2,paired=TRUE)
  testRes$fm_test_D2_all <- t.test(fm_active$D2,fm_sleep$D2,paired=TRUE)
  
  testRes$hc_test_ls_all <- t.test(hc_active$ls,hc_sleep$ls,paired=TRUE)
  testRes$fm_test_ls_all <- t.test(fm_active$ls,fm_sleep$ls,paired=TRUE)
  
  testRes$hc_test_w_all <- t.test(hc_active$w,hc_sleep$w,paired=TRUE)
  testRes$fm_test_w_all <- t.test(fm_active$w,fm_sleep$w,paired=TRUE)
  
  testRes$
    
    # BOOTSTRAP
    
    test <- function(data, idx){
      
      newData <- data[idx,]
      res <- t.test(newData$X1,newData$X2,paired=TRUE)
      return(res$p.value)
      
    }
  
  set.seed(42)
  
  dataForTest <- data.frame(cbind(hc_active$rs,hc_sleep$rs))
  hc_test_rs <- boot(data = dataForTest, 
                     test, 
                     R = 1000)
  
  dataForTest <- data.frame(cbind(fm_active$rs,fm_sleep$rs))
  fm_test_rs <- boot(data = dataForTest, 
                     test, 
                     R = 1000)
  
  dataForTest <- data.frame(cbind(hc_active$Do,hc_sleep$Do))
  hc_test_Do <- boot(data = dataForTest, 
                     test, 
                     R = 1000)
  
  dataForTest <- data.frame(cbind(fm_active$Do,fm_sleep$Do))
  fm_test_Do <- boot(data = dataForTest, 
                     test, 
                     R = 1000)
  
  
  testRes$fmStrapped <- fm_test_rs$t[fm_test_rs$t < 0.05]
  testRes$hcStrapped <- hc_test_rs$t[hc_test_rs$t < 0.05]
  
  testMat <- matrix(nrow = 6, ncol = 4)
  
  testMat[1,1] <- testRes$fm_test_ls_all$p.value
  testMat[2,1] <- testRes$fm_test_rs_all$p.value
  testMat[3,1] <- testRes$fm_test_w_all$p.value
  testMat[4,1] <- testRes$fm_test_Do_all$p.value
  testMat[5,1] <- testRes$fm_test_D1_all$p.value
  testMat[6,1] <- testRes$fm_test_D2_all$p.value
  testMat[1,2] <- testRes$fm_test_ls_all$statistic
  testMat[2,2] <- testRes$fm_test_rs_all$statistic
  testMat[3,2] <- testRes$fm_test_w_all$statistic
  testMat[4,2] <- testRes$fm_test_Do_all$statistic
  testMat[5,2] <- testRes$fm_test_D1_all$statistic
  testMat[6,2] <- testRes$fm_test_D2_all$statistic
  testMat[1,3] <- testRes$hc_test_ls_all$p.value
  testMat[2,3] <- testRes$hc_test_rs_all$p.value
  testMat[3,3] <- testRes$hc_test_w_all$p.value
  testMat[4,3] <- testRes$hc_test_Do_all$p.value
  testMat[5,3] <- testRes$hc_test_D1_all$p.value
  testMat[6,3] <- testRes$hc_test_D2_all$p.value
  testMat[1,4] <- testRes$hc_test_ls_all$statistic
  testMat[2,4] <- testRes$hc_test_rs_all$statistic
  testMat[3,4] <- testRes$hc_test_w_all$statistic
  testMat[4,4] <- testRes$hc_test_Do_all$statistic
  testMat[5,4] <- testRes$hc_test_D1_all$statistic
  testMat[6,4] <- testRes$hc_test_D2_all$statistic
  
  return(testMat)
  
}
