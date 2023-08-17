#Q2(a)
n<-20
prod<-1
for (i in 1:n-1){
  prod=prod*(1-(i/365))
}
print (prod)

#Q2(b)
#function_name=function(arguments){
#    line of code
#}

A=0.4
B=0.2
pAB=0.85
bayes=function(A,B,pAB){
  pBA=(B*pAB)/A
  return(pBA)
}

pBA=bayes(A,B,pAB)
print(pBA)