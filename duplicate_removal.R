cat("Duplicate rows before removal: ", sum(duplicated(data)), "\n")
data <- data[!duplicated(data), ]
cat("Duplicate rows after removal: ", sum(duplicated(data)), "\n")
cat("\nDuplicate rows removed\n")
write.csv(data,"revised_dataset/removed_duplicated_row.csv")
View(data)