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
