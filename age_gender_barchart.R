library(ggplot2)

# Load data
data <- read.csv("revised_dataset/categorical_dataset.csv")

# Ensure Gender is properly formatted as factor
if(!is.factor(data$Gender)) {
  data$Gender <- factor(data$Gender, 
                        levels = c(0, 1), 
                        labels = c("Female", "Male"))
}

# Age by Gender Bar Chart
ggplot(data, aes(x = Gender, fill = Gender)) +
  geom_bar() +
  labs(title = "Age Distribution by Gender",
       x = "Gender",
       y = "Count") +
  scale_fill_manual(values = c("Female" = "#F8766D", "Male" = "#00BFC4")) +
  theme_minimal() +
  theme(legend.position = "top",
        plot.title = element_text(hjust = 0.5))

# Save the plot
ggsave("Visualization/age_gender_barchart.png", width = 8, height = 6)