#script para trabalho em conjunto

library(tidyverse)
library(readxl)


base = read_excel(path = "Base Casos.xlsx")

summary(base)

graf <- ggplot(base, aes(x = "", y = Estatura)) +
  geom_boxplot(fill = "#10B981") +
  labs(x = NULL, y = "Estatura (m)") +
  theme_minimal(base_size = 12)

graf

base |> 
  ggplot(mapping = aes(x = Peso,y = Estatura))+
  geom_point()+
  geom_smooth(lm="loess")+
  theme_minimal()+
  labs(title = "Grafico de dipersao Peso x Estatura",subtitle = paste0("correlação : ",
                                                                       round(cor(base$Peso,base$Estatura),4)))
