library(ggplot2)

data <- read.csv("/home/enrperes/Documents/UNIUD/Fisica IoT/terzo esperimento/waveform250ms-fix-fixed.csv")

# plot(data$Time, data$Channel1, main = "Dati ottenuti",
#      xlab = "V (V)", ylab = "I (A)", xaxt = 'n') +
#   axis(1, at=c(4, 8, 12, 16, 20), labels=c(4, 8, 12, 16, 20))
# abline(lm(data$Channel1 ~ data$Time), col = "red", lwd ="2")

ggplot(data, aes(x = Time, y = Channel1)) + 
  geom_point(shape ="1") +
  geom_smooth(method="loess", se=TRUE)
  # geom_smooth(method="lm", se=FALSE) + theme_bw()


