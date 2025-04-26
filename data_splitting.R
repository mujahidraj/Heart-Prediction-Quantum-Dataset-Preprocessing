set.seed(123)
split_index <- createDataPartition(data$HeartDisease, p = 0.8, list = FALSE)
train_data <- data[split_index, ]
test_data <- data[-split_index, ]
cat("Original data size:", nrow(data), "\n")
cat("Training data size:", nrow(train_data), "\n")
cat("Testing data size:", nrow(test_data), "\n")
cat("Sum of train + test:", nrow(train_data) + nrow(test_data), "\n")
cat("\nData splitted between testset and training set where 80% is training set\n")
write.csv(train_data, "revised_dataset/train_dataset.csv", row.names = FALSE)
write.csv(test_data, "revised_dataset/test_dataset.csv", row.names = FALSE)
View(train_data)
View(test_data)