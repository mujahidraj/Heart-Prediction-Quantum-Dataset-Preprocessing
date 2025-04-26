normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}
data[numeric_cols] <- lapply(data[numeric_cols], normalize)
cat("Value Normalized using normalization formula (x - min(x)) / (max(x) - min(x)\n ")
write.csv(data,"revised_dataset/normalized_dataset.csv")
View(data)