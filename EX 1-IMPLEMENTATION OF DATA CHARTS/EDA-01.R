print("Roll No: 23BAD066")
library(ggplot2)
library(dplyr)
library(tidyr)

student_data <- read.csv("C:/Users/cherr/Downloads/1.student_performance.csv")
str(student_data)
summary(student_data)
student_data <- student_data %>%
  mutate(
    Avg_Internal = rowMeans(
      select(., Internal_Test1, Internal_Test2),
      na.rm = TRUE
    )
  )
subject_avg <- student_data %>%
  group_by(Subject) %>%
  summarise(
    Mean_Marks = mean(Avg_Internal, na.rm = TRUE),
    .groups = "drop"
  )

# -------------------- Plot 1: Subject-wise Average Internal Marks (Bar Chart) --------------------
plot1 <- ggplot(subject_avg, aes(x = Subject, y = Mean_Marks, fill = Subject)) +
  geom_col() +
  theme_minimal() +
  labs(
    title = "Subject-wise Average Internal Marks",
    x = "Subject",
    y = "Average Marks"
  ) +
  theme(legend.position = "none")

print(plot1)


trend_data <- student_data %>%
  group_by(Subject) %>%
  summarise(
    Internal_Test_1 = mean(Internal_Test1, na.rm = TRUE),
    Internal_Test_2 = mean(Internal_Test2, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  pivot_longer(
    cols = starts_with("Internal_Test"),
    names_to = "Test",
    values_to = "Marks"
  )

# -------------------- Plot 2: Trend Line Chart --------------------
plot2 <- ggplot(trend_data, aes(x = Subject, y = Marks, group = Test, color = Test)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  theme_minimal() +
  labs(
    title = "Internal Test Performance Trend (Test 1 vs Test 2)",
    x = "Subject",
    y = "Average Marks"
  )

print(plot2)

# -------------------- OPTIONAL: Save Plots --------------------
# Uncomment below if you want to save the plots as images

# ggsave("Subject_Avg_Internal_Marks.png", plot1, width = 8, height = 5)
# ggsave("Internal_Test_Trend.png", plot2, width = 8, height = 5)
