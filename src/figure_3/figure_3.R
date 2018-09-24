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
