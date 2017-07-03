courses<-c("java","vbdt","r","sql")
salaries<-c(1700,1600,400,700)
peeps<-c('mike','bob','peter','jon')
names(salaries)<-peeps
salaries
nsals[5]
abc<-seq(1,1500)
marks<- c("Mike"=150,"Jon"=160,"Peter"=180)
courses[4]
courses[1:3]
courses[c(T,F,F,T)]
courses[c(1,0,5,2)]
salaries[salaries>700]
xyz<-c(10,20,10,10)
marks['Mike']
a<-salaries+10
b<-salaries+xyz
a
b
salaries[c(T,F)]
marks[match(max(marks),marks)]
print(salaries[max(salaries)])
print(sum(salaries))
print(max(salaries))
print(min(salaries))
print(length(salaries))
print(names(salaries))

salaries<-factor(salaries)
levels(salaries)=c('Small','Medium','Large','damn large')
salaries
table(salaries)
sexes<-factor(c('M','F','F','F','M'))
levels(sexes)<-c('Male','Female')
sexes

