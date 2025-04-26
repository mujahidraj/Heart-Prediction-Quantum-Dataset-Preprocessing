ggplot(data, aes(x = Risk_type, fill = Risk_type)) +
  geom_bar() +
  labs(title = "Distribution of Risk Type", x = "Risk Level", y = "Count") +
  scale_fill_brewer(palette = "YlOrRd") +  
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 