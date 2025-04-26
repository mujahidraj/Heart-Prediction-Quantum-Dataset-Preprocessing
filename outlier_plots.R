library(ggplot2)
library(gridExtra)
library(readxl)


data <- read_excel("Dataset/original_dataset.xlsx")


numeric_cols <- c("Age", "BloodPressure", "Cholesterol", "QuantumPatternFeature")

create_boxplot <- function(col_name) {
  ggplot(data, aes(y = .data[[col_name]])) +
    geom_boxplot(fill = "lightblue", color = "black") +
    labs(title = paste("Outliers in", col_name),
         y = col_name) +
    theme_minimal()
}

outlier_plots <- lapply(numeric_cols, create_boxplot)

grid_plots <- do.call(grid.arrange, c(outlier_plots, ncol = 2))

ggsave("Visualization/outlier_plots.png", grid_plots, width = 10, height = 8)