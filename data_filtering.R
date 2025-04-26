data <- data %>%
  filter(Age > 0 & Age < 120) %>%
  filter(BloodPressure >= 40 & BloodPressure <= 250)
cat("\nData filtered where age range (0-120) and bloodpressure range (40-250)\n")
View(data)
write.csv(data,"revised_dataset/filtered_dataset.csv")