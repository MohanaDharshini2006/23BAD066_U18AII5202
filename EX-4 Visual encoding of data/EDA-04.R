print("MOHANA DHARSHINI - 23BAD066")

# -------------------- Libraries --------------------
library(ggplot2)
library(dplyr)
traffic <- read.csv("C:/Users/cherr/Downloads/4.traffic_accidents.csv")
str(traffic)
head(traffic)


traffic$Severity <- factor(
  traffic$Severity,
  levels = c("Minor", "Major", "Fatal"),
  ordered = TRUE
)

ggplot(traffic, aes(
  x = Location,
  y = Vehicles_Involved,
  color = Severity,
  size = Casualties,
  shape = Accident_Type
)) +
  geom_point(alpha = 0.8) +
  scale_color_manual(
    values = c("Minor" = "green", "Major" = "orange", "Fatal" = "red")
  ) +
  labs(
    title = "Visual Encoding of Traffic Accident Data",
    x = "Accident Location",
    y = "Vehicles Involved"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
