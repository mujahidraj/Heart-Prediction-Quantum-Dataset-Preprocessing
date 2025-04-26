cat("Missing values before:\n")
print(colSums(is.na(data)))
gg_miss_var(data) + ggtitle("Missing Data by Variable (Before Handling)")
numeric_columns <- c("Age", "Gender", "BloodPressure", "Cholesterol", "QuantumPatternFeature", "HeartDisease")
for (col in numeric_columns) {
  data[[col]] <- suppressWarnings(as.numeric(as.character(data[[col]])))
  invalid_count <- sum(is.na(data[[col]]))
  cat("Invalid values detected in", col, ":", invalid_count, "\n")
}
valid_heart_rate <- c("High", "Low")
data$Heart_Rate <- ifelse(toupper(data$Heart_Rate) %in% toupper(valid_heart_rate),
                          tools::toTitleCase(tolower(data$Heart_Rate)), NA)
invalid_hr_count <- sum(is.na(data$Heart_Rate))
cat("Invalid Heart_Rate values converted to NA:", invalid_hr_count, "\n")
View(data)