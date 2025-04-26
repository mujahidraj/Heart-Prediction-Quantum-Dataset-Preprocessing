cat("Class distribution (HeartDisease):\n")
print(table(data$HeartDisease))
if (length(unique(data$HeartDisease)) == 2) {
  data$HeartDisease <- as.factor(data$HeartDisease)
  balanced_data <- upSample(x = data[, -which(names(data) == "HeartDisease")],
                            y = data$HeartDisease,
                            yname = "HeartDisease")
  data <- balanced_data
  data$HeartDisease <- as.numeric(as.character(data$HeartDisease))
}
cat("\nData Balanced where data increase from 151 to 174\n")
write.csv(data,"revised_dataset/balanced_dataset.csv")
View(data)