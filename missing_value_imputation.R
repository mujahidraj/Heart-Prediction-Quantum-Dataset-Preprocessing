age_median <- median(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- age_median
cat("Missing age's median value:", age_median, "\n")
data$Gender[is.na(data$Gender)] <- get_mode(data$Gender)
cat("Missing gender's mode value:", get_mode(data$Gender), "\n")
bp_mean <- mean(data$BloodPressure, na.rm = TRUE)
data$BloodPressure[is.na(data$BloodPressure)] <- bp_mean
cat("Missing Blood Pressure's mean value:", bp_mean, "\n")
chol_mean <- mean(data$Cholesterol, na.rm = TRUE)
data$Cholesterol[is.na(data$Cholesterol)] <- chol_mean
cat("Missing cholestrol's mean value:", chol_mean, "\n")
data$Heart_Rate <- ifelse(data$Heart_Rate == "High", 1,
                          ifelse(data$Heart_Rate == "Low", 0, NA))
data$Heart_Rate[is.na(data$Heart_Rate)] <- get_mode(data$Heart_Rate)
cat("Missing Heart_rate mode value:", get_mode(data$Heart_Rate), "\n")
qpf_mean <- mean(data$QuantumPatternFeature, na.rm = TRUE)
data$QuantumPatternFeature[is.na(data$QuantumPatternFeature)] <- qpf_mean
cat("Missing Quantum pattern mode value:", qpf_mean, "\n")
data$HeartDisease[is.na(data$HeartDisease)] <- get_mode(data$HeartDisease)
cat("Missing Heart disease mode value:",get_mode(data$HeartDisease) , "\n")
cat("Missing values after:\n")
print(colSums(is.na(data)))
gg_miss_var(data) + ggtitle("Missing Data by Variable (After Handling)")
cat("\nMissing values cleared using median , mode and mean\n")
write.csv(data,"revised_dataset/missing_value_cleared.csv")
View(data)