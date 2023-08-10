num<-as.integer(readline (prompt="Enter the number:"))
n1=0
n2=1

if(num<=0){
  print("No of terms should be positive")
}else{
  print(n1)
  print(n2)
  for (i in 3:num){
    n3=n1+n2 
    print (n3)
    n1=n2
    n2=n3
  }
}


