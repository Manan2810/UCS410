#Q1(a)
chest=c(rep("gold",20),rep("silver",30),rep("bronze",50))
print(chest)
sample(chest,10)

#Q1(b)
surgery=c("success","fail")
print(surgery)
sample(surgery,10,replace = TRUE,prob=c(0.9,0.1))