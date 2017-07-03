bob<-function(a,b){
  if(a<b || (a>22 & b<22)){
    return(b)
  }else if(b<a || (b>22 & a<22)){
    return(a)
  }else{
    0
  }
}

bob(22,22)

#unique sum q
summer<-function(a,b,c){
  x=a
  y=b
  z=c
  if(a==b||a==c){x<-0}
  if(b==a||b==c){y<-0}
  if(c==a||c==b){z<-0}
  return(x+y+z)
}
summer(1,2,3)
summer(1,2,2)
summer(2,2,2)


#conditionals q
for(a in 1:10){
  print(x(a,0))
}
#anon function q
x<-c
b=0
function(x){
  b<<-x[1]
}
print(b)
#toohot q
toohot<-function(temperature,isSummer){
  if(isSummer){
    upper=100
  }else{
    upper=90
  }
  if(temperature > 60 && temperature<upper){
    TRUE
  }else{
    FALSE
  }
}
toohot(80,FALSE)

#leap year q
leapyear<-function(year){
  if(year%%4 ==0 && (year%%400==0 || year%%100!=0)){
    TRUE
  }
}
leapyear(2016)
#working with files q
myv<-c(seq(1,10,by=2))
write.csv(file="c:/mike.csv",myv)
mike<-read.csv('c:/mike.csv')
mike

#plot q
iris
?plot
boxplot(Sepal.Width~Species,data=iris,ylab='Sepal Width')

plot(iris$Petal.Length,iris$Petal.Width,col=iris$Species,pch = c(16, 17, 18)[as.numeric(iris$Species)],xlab='Petal',ylab='Sepal')
legend("topleft",col=c('black','red','green'),legend=levels(iris$Species), pch = c(16, 17, 18), inset = .05)

#co2 data
#q1
class(CO2$Plant)
#q2
mean_uptake<-mean(CO2$uptake)
mean_uptake
#q3
boxplot(CO2$uptake~CO2$Type,data=CO2)
#q4
mississippi_CO2<-CO2[CO2$Type=='Mississippi',]
quebec_CO2<-CO2[CO2$Type=='Quebec',]
mississippi_CO2
quebec_CO2

#q5
mean_checker<-function(a,b){
  print(mean(a))
  print(mean(b))
  if(mean(a)>mean(b)){
    return(paste('A has the highest mean'))
  }else{
    return(paste('B has the highest mean'))
  }
}
mean_checker(mississippi_CO2$uptake,quebec_CO2$uptake)

#q6
ggplot(OrchardSprays[1],aes(OrchardSprays$treatment, OrchardSprays$decrease))+geom_boxplot(colour='red',fill='green')+ggtitle(paste('Max decrease is treatment:',OrchardSprays[OrchardSprays$decrease==max(OrchardSprays$decrease),'treatment']))+geom_point(aes(colour=factor(OrchardSprays$decrease),pch='MIKE'))+labs(x = "Treatments", y = "Max Decrease")+ guides(colour=FALSE)

#q7
ChickWeight
plot(ChickWeight$weight~ChickWeight$Diet,ChickWeight)
plot(ChickWeight$Diet,ChickWeight$weight)
