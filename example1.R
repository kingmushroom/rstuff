phys<-88
che<-98
mat<-60
#phys<-as.numeric(readline('Enter physics mark: '))
#che<-as.numeric(readline('Enter chemistry mark: '))
#mat<-as.numeric(readline('Enter maths mark: '))

total<-phys+che+mat
per=(total/450)*100
phys=(phys/150)*100
mat=(mat/150)*100
che=(che/150)*100
message(sprintf("Physics Percentage:- %f",phys))
message(sprintf("Chemistry Percentage:- %f",che))
print(che)
print('Maths Percentage:-')
print(mat)
print(cat('Average Percentage:-',per,'\n'))
markcount=0
if(phys<70||che<70||mat<70){
  if(phys<70){
    print('Failed Physics')
    markcount=markcount+1
  }
  if(che<70){
    print('Failed Chemistry')
    markcount=markcount+1
  }
  if(mat<70){
    print('Failed Maths')
    markcount=markcount+1
  }
}
if(markcount==1)
  print("Retake test")
if(markcount==2)
  print("Redo year")
if(markcount==3)
  print("Go home")
for(a in seq(20,1)){
  print(a)

}
result <- switch(amountFailed + 1, 
                 "You passed!",
                 paste("you need to retake",fail), 
                 "You need to resit the year",
                 "Get lost punk!")
message("ARRGH")
assign('y',50)
message(y*10)
print(y)
m<-function(y){ 
  print('mike') 
  print(y)}
m(10)

b<-function(x){x*2}
print(b(5))

c<-function(x,y){
  d<-x+y
  return(d)
}
c(1,2)
print(c(1,2))
print(b)

for(a in seq(20,1)){
  message('MIKE')
}