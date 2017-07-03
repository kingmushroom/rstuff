pob<-456
printp<-function(a,...){
  output=a
  for(a in c(...)){
   output<-paste(output,a) 
  }
    print(output)
}
printp('hello','mike',pob)



printlist<-function(a){
  for(b in a){
    print(b)
  }
}
printlist(list(1,'mike',c(1:5)))
John<-c(1:5)
bob<-"Mike"
v<-list(John=c(1:5), Bob=c("mike","notmike"))


bob<-paste("mike"," isawesome")


Bob









#a<-as.numeric(readline('Enter the first num: '))
#b<-as.numeric(readline('Enter the second num: '))
#num=readline('Enter the choice: ')
#express=switch(num,'1'="a+b",'2'="a*b",'3'="a/b",'4'="a-b")
#print(paste("Answer to", express,"is",eval(parse(text=express))))