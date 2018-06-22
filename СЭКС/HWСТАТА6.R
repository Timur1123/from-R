mean=mean(Prius$`Average MPG`)
sd=sd(Prius$`Average MPG`)

max=mean+qnorm(0.975)*sd/(40^(1/2))
min=mean-qnorm(0.975)*sd/(40^(1/2))
c(min,max)

#Задание 2. Life after college. 
p=348/400
p
n=400


#Биноминароное,но если большая то норамальное
min95=p-qnorm(0.975)*sqrt(p*(1-p)/n)
max95=p+qnorm(0.975)*sqrt(p*(1-p)/n)
c(min95,max95)

min99=p-qnorm(0.995)*sqrt(p*(1-p)/n)
max99=p+qnorm(0.995)*sqrt(p*(1-p)/n)
c(min99,max99)

#Задание 3. Реакция на рекламу
mean=0.666666667
min95=mean-qt(0.975,15-1)*1.0467/sqrt(15)
min95 #Больше нуля-всё шикарно

t.test(Ad$after,Ad$before,paired = T)
?t.test


var.test(Male_Female$Male,Male_Female$Female)
t.test(Male_Female$Male,Male_Female$Female,var.equal = T)


