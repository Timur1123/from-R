SGSkramwe коэфициент крамера

Education
plot(Education$expend_ed,Education$proc_ed)
qqnorm(Education$expend_ed)
qqnorm(Education$proc_ed)   
hist(Education$expend_ed)
hist(Education$proc_ed)


library("nortest")

pearson.test(Education$expend_ed)
pearson.test(Education$proc_ed)



cor.test(Education$expend_ed,Education$proc_ed,
         method = c("pearson"))



cor.test(Education$expend_ed,Education$proc_ed,
                 method = "spearman", exact = F)

cor.test(Education$expend_ed,Education$proc_ed,
         method = "kendall", exact = F)


Используем exact = F

plot(Education$expend_ed,Education$rating)
cor.test(Education$expend_ed,Education$rating,
         alternative = c("two.sided", "less", "greater"),
         method = "spearman",
         exact = F)

plot(Education$rating,Education$proc_ed)
cor.test(Education$rating,Education$proc_ed,
         method =  "spearman",         exact = F)



plot(variety$variety,variety$strength)
cor.test(variety$variety,variety$strength,
         alternative = c("two.sided", "less", "greater"),
         method = c("pearson", "kendall", "spearman"),
         exact = NULL, conf.level = 0.95, continuity = FALSE)

2.	Ниже для выборки из 15 стран приведены оценки этнического разнообразия и социальной напряженности (массовые беспорядки, демонстрации, террористические акты). Существует ли зависимость между этими двумя переменными? Можно ли утверждать, что в странах с большим этническим разнообразием выше уровень социальной напряженности?

plot(variety$variety,variety$strength)
cor.test(variety$variety,variety$strength, method = "kendall",   exact = F)


cor.test(variety$variety,variety$strength, method = "pearson")
