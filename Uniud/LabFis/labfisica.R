library(ggplot2)

data <- data.frame(volt = c(4, 8, 12, 16, 20),
                   ampere = c(0.0004317, 0.000825, 0.001233, 0.001655, 0.0025051))
plot(data$volt, data$ampere, main = "Dati ottenuti",
    xlab = "V (V)", ylab = "I (A)", xaxt = 'n') +
    axis(1, at=c(4, 8, 12, 16, 20), labels=c(4, 8, 12, 16, 20))

abline(lm(data$ampere ~ data$volt), col = "red", lwd ="2")




