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
