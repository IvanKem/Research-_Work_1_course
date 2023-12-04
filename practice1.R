#Вариант 7

#Объясняемая переменная Examination
#Объясняющая переменная (регрессор) Fertility,Education

#1 Оцените среднее значение, дисперсию и СКО переменных, указанных во втором и третьем столбце.
#2 Постройте зависимости вида y = a + bx, где y – объясняемая переменная, x –
#регрессор (для каждого варианта по две зависимости).
#3 Оцените, насколько «хороша» модель по коэффициенту детерминации
#4 Оцените, есть ли взаимосвязь между объясняемой переменной и объясняющей
#переменной (по значению p-статистики, «количеству звездочек» у регрессора в модели).

library("lmtest")
data = swiss

#1)
#среднее арифметическое,Дисперсия и СКО Examination
mean(data$Examination)
var(data$Examination)
sd(data$Examination)



#среднее арифметическое,Дисперсия и СКО Fertility
mean(data$Fertility)
var(data$Fertility)
sd(data$Fertility)



#среднее арифметическое,Дисперсия и СКО Education
mean(data$Education)
var(data$Education)
sd(data$Education)


#2,3,4)

#Регрессия y =ax*b для Examination~Fertility
model1=lm(Examination~Fertility,data)
model1
summary(model1)
# Оценка по R^2 : модель среднего качества, выдает правильные ответы в 40% случаев
# p-value = 9.45*(10**-7) ,  *** у Fertility означают сильную взаимосвязь Fertility и Examination
#Fertility и Examination связаны отрицательно (-0.41)

#Регрессия y =ax*b для  Examination~Education
model2=lm(Examination~Education,data)
model2
summary(model2)
# Оценка по R^2 : модель среднего качества, выдает правильные ответы в 47% случаев
# p-value = 4.811*(10**-8) ,   *** у Education означают сильную взаимосвязь Education и Examination
# Education и Examination связаны положительно (0.57)

library("lmtest")
data = swiss

 #1)
#среднее арифметическое,Дисперсия и СКО Examination
mean(data$Examination)
var(data$Examination)
sd(data$Examination)



#среднее арифметическое,Дисперсия и СКО Fertility
mean(data$Fertility)
var(data$Fertility)
sd(data$Fertility)



#среднее арифметическое,Дисперсия и СКО Education
mean(data$Education)
var(data$Education)
sd(data$Education)


#2,3,4)

#Регрессия y =ax*b для Examination~Fertility
model1=lm(Examination~Fertility,data)
model1
summary(model1)
# Оценка по R^2 : модель среднего качества, выдает правильные ответы в 40% случаев
# p-value = 9.45*(10**-7) ,  *** у Fertility означают сильную взаимосвязь Fertility и Examination
#Fertility и Examination связаны отрицательно (-0.41)

#Регрессия y =ax*b для  Examination~Education
model2=lm(Examination~Education,data)
model2
summary(model2)
# Оценка по R^2 : модель среднего качества, выдает правильные ответы в 47% случаев
# p-value = 4.811*(10**-8) ,   *** у Education означают сильную взаимосвязь Education и Examination
# Education и Examination связаны положительно (0.57)




