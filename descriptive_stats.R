cat("\nCentral Tendencies of Age by Gender:\n")
for (g in unique(data$Gender)) {
  group_age <- data$Age[data$Gender == g]
  cat("\nGender:", g, "\n")
  cat("Mean:", mean(group_age), "\n")
  cat("Median:", median(group_age), "\n")
  cat("Mode:", get_mode(group_age), "\n")
}

cat("\nSpread of Age by Gender:\n")
for (g in unique(data$Gender)) {
  group_age <- data$Age[data$Gender == g]
  cat("\nGender:", g, "\n")
  cat("Range:", range(group_age), "\n")
  cat("IQR:", IQR(group_age), "\n")
  cat("Variance:", var(group_age), "\n")
  cat("Standard Deviation:", sd(group_age), "\n")
}

cat("\nCentral Tendencies of Age by Heart Rate:\n")
for (hr in unique(data$Heart_Rate)) {
  group_age <- data$Age[data$Heart_Rate == hr]
  cat("\nHeart Rate:", hr, "\n")
  cat("Mean:", mean(group_age), "\n")
  cat("Median:", median(group_age), "\n")
  cat("Mode:", get_mode(group_age), "\n")
}

cat("\nBloodPressure Stats:\n")
cat("Mean:", mean(data$BloodPressure), "\n")
cat("Median:", median(data$BloodPressure), "\n")
cat("Mode:", get_mode(data$BloodPressure), "\n")
cat("Range:", range(data$BloodPressure), "\n")
cat("IQR:", IQR(data$BloodPressure), "\n")
cat("Variance:", var(data$BloodPressure), "\n")
cat("Standard Deviation:", sd(data$BloodPressure), "\n")

cat("\nCholesterol Stats:\n")
cat("Mean:", mean(data$Cholesterol), "\n")
cat("Median:", median(data$Cholesterol), "\n")
cat("Mode:", get_mode(data$Cholesterol), "\n")
cat("Range:", range(data$Cholesterol), "\n")
cat("IQR:", IQR(data$Cholesterol), "\n")
cat("Variance:", var(data$Cholesterol), "\n")
cat("Standard Deviation:", sd(data$Cholesterol), "\n")

cat("\nQuantumPatternFeature Stats:\n")
cat("Mean:", mean(data$QuantumPatternFeature), "\n")
cat("Median:", median(data$QuantumPatternFeature), "\n")
cat("Mode:", get_mode(data$QuantumPatternFeature), "\n")
cat("Range:", range(data$QuantumPatternFeature), "\n")
cat("IQR:", IQR(data$QuantumPatternFeature), "\n")
cat("Variance:", var(data$QuantumPatternFeature), "\n")
cat("Standard Deviation:", sd(data$QuantumPatternFeature), "\n")