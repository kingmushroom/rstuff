num1<-as.numeric(readline("Number 1?"))
num2<-as.numeric(readline("Number 2?"))
for(b in num1:num2){
for(a in 1:10){
  message(paste(a," * ",b,"= ",a*b))
}}






a=1


repeat{
  a=1
repeat{
  
  message(sprintf("%d * %d = %d",a,num1,a*num1))
  a=a+1
  
  if(a==11){
    break
  }
  
}
if(num1>num2){
  num1=num1-1
} 
if(num1<num2){
  num1=num1+1
}
if(num1==num2){
  break
}
}

a=0
b=1:10
