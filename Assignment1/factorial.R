num<-as.integer(readline (prompt="Enter the number:"))
# Factorial of 4=1*2*3*4
factorial=1
if (num<0){
  print ("The number is negative.")
}else if (num==0){
  print ("The factorial of 0 is 1.")
}else{
  for (i in 1:num) {
      factorial=factorial*i
    }
     print (paste ("the factorial of", num, "is", factorial))
}



