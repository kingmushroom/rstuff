bill=as.numeric(readline('Enter the bill: '))

getCoin<-function(bill){
  coins<-c(50,20,10,5,2,1,0.5,0.2,0.1,0.05,0.02,0.01)
  thisCoin<-coins[coins<bill]
  return(thisCoin[1])
}
print(paste('Your bill is: ',getWords(bill)))

bill=bill+.01
change<-integer()
while(!is.na(bill)){
  thisCoin=getCoin(bill)
  bill=bill-thisCoin
  if(!is.na(thisCoin)){
    change<-c(thisCoin,change)
  }
}

change<-factor(change)
change=sort(change, decreasing = TRUE)

for(coin in change){
for(coin in change){
  print(paste("You need",length(which(change == coin))," x ",getWords(coin)))
  remove<-c(coin)
  change=setdiff(change, remove)
  break
}}

twodig<-function(pence,pen){
  thechars<-strsplit(as.character(pence),"")
  if(length(thechars[[1]])==1 && as.numeric(pen)<1){
    thechars<-strsplit(paste(as.character(pence),"0"),"")
  }
  if(length(thechars[[1]])>1){
  if(thechars[[1]][1]=='1'){
    if(is.na(thechars[[1]][3])){chars=thechars[[1]][2]}else{chars=thechars[[1]][3]}
    rhtwo <-switch(chars,"0" = "Ten", "1"="Eleven","2"="Twelve","3"="Thirteen","4"="Fourteen","5"="Fifteen","6"="Sixteen","7"="Seventeen","8"="Eighteen","9"="Nineteen")
  }else{
    tenschar<-switch(thechars[[1]][1],"1"="Ten","2"="Twenty","3"="Thirty","4"="Fourty","5"="Fifty","6"="Sixty","7"="Seventy","8"="Eighty","9"="Ninety")
    one =thechars[[1]][2]
    onechar<-onedig(one)
    rhtwo=paste(tenschar,onechar)
  }
    }else{
      rhtwo<-onedig(thechars[[1]][1])
    }
  return(rhtwo)#}
}
onedig<-function(thenumber){
  #does a simple switch on the number
  onechar=switch(as.numeric(thenumber),"One","Two","Three","Four","Five","Six","Seven","Eight","Nine")
  return(onechar)
}
getWords<-function(value){
  thechars<-strsplit(as.character(value), ".", fixed = TRUE)
  pence=thechars[[1]][2]
  pounds=thechars[[1]][1]
  and<-""
  if(!is.na(pence)&&!is.na(pounds)){ 
    if(as.numeric(pounds)>0&&as.numeric(pence)>0){
        and<-"and"
    }else{
        and<-''}
    }
  if(pence>0&&!is.na(pence)){
      pence=paste(twodig(pence,0),"Pence")
  }else{
      pence=""}
  if(pounds>0){
    pounds=paste(twodig(pounds,5),"Pounds")
  }else{
    pounds=""}
  x<-paste(pounds,and,pence)
  return(x)
}
