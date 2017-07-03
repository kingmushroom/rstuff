library(ggplot2)
results <- rbind(c(1, 4, 1), c(1, 1, 1), c(72, 71, 93))
decreases<-list(OrchardSprays$decrease,OrchardSprays$treatment)
?ggplot
decreases[2][max(decreases[1])


barplot(OrchardSprays$decrease,OrchardSprays$treatment)
?barplot
OrchardSprays
OrchardSprays[OrchardSprays$decrease==max(OrchardSprays$decrease),]

ggplot(OrchardSprays[1],aes(OrchardSprays$treatment, OrchardSprays$decrease))+geom_boxplot(colour='red',fill='green')+ggtitle(paste('Max decrease is treatment:',OrchardSprays[OrchardSprays$decrease==max(OrchardSprays$decrease),'treatment']))+geom_point(aes(colour=factor(OrchardSprays$decrease),pch='MIKE'))+labs(x = "Treatments", y = "Max Decrease")+ guides(colour=FALSE)
levels(OrchardSprays$treatment)
table(OrchardSprays$treatment)
table(mean(OrchardSprays$decrease),levels(OrchardSprays$treatment))

treatmentdecreases<-Orchard
OrchardSprays[,levels('treatment')]
OrchardSprays.groupby('treatment').mean()

#average decrease by treatment.
a<-by(OrchardSprays$decrease, OrchardSprays$treatment, mean)


