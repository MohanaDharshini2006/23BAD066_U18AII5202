print("MOHANA DHARSHINI - 23BAD066")
library(GGally)
library(dplyr)
health <- read.csv("C:/Users/student/Downloads/3.healthcare_data.csv")
str(health)
head(health)
health <- health %>%
  mutate(
    Age_Group = cut(
      Age,
      breaks = c(0, 30, 50, 100),
      labels = c("Young", "Middle", "Senior")
    )
  )
ggpairs(
  health,
  columns = c("Age", "Blood_Pressure", "Cholesterol", "Glucose_Level"),
  aes(color = Age_Group, alpha = 0.7),
  title = "Scatter Plot Matrix of Health Indicators"
)
health_numeric <- health %>%
  select(Age, Blood_Pressure, Cholesterol, Glucose_Level)

correlation_matrix <- cor(
  health_numeric,
  use = "complete.obs"
)
print(correlation_matrix)
