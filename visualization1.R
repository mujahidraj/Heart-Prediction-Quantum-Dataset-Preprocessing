


ggplot(data, aes(x = Risk_type, fill = Gender)) +
  geom_bar(position = "dodge") +
  labs(
    title = "Risk Level Distribution by Gender",
    subtitle = "Higher numbers indicate greater risk",
    x = "Risk Level", 
    y = "Count",
    fill = "Gender"
  ) +
  scale_fill_manual(values = c("Female" = "#F8766D", "Male" = "#00BFC4")) +
  theme_minimal() +
  theme(legend.position = "top")
