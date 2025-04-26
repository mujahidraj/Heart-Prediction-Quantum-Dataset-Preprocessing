cap_outliers_iqr <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  x[x < lower_bound] <- lower_bound
  x[x > upper_bound] <- upper_bound
  return(x)
}
numeric_cols <- c("Age", "BloodPressure", "Cholesterol", "QuantumPatternFeature")
data[numeric_cols] <- lapply(data[numeric_cols], cap_outliers_iqr)
cat("\nData outlier Treated Successfully using IQR\n")
write.csv(data,"revised_dataset/outlier_treated.csv")
View(data)