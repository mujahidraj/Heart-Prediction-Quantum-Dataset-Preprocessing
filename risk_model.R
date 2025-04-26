model <- glm(HeartDisease ~ Age + BloodPressure + Cholesterol + Gender, 
             data = data, family = "binomial")

data$Risk_Score <- predict(model, type = "response")

data <- data %>%
  mutate(
    Risk_type = cut(Risk_Score,
                    breaks = quantile(Risk_Score, probs = seq(0, 1, 0.2)),
                    labels = c("1", "2", "3", "4", "5"),
                    include.lowest = TRUE)
  )

write.csv(data, "revised_dataset/Analyzed_dataset.csv")
View(data)