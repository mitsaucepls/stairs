# Load necessary library
library(ggplot2)

# Create a sample dataset
age <- seq(0, 90, by = 1)
crash_rate <- c(20, 18, 17, 15, 14, 12, 11, 10, 9, 8,  # ages 0-9
                7, 6, 6, 7, 8, 10, 13, 15, 17, 20,     # ages 10-19
                22, 25, 28, 32, 35, 38, 40, 42, 43, 44, # ages 20-29
                45, 46, 46, 45, 44, 43, 42, 41, 40, 39, # ages 30-39
                37, 36, 35, 34, 33, 32, 34, 37, 40, 43, # ages 40-49 (increasing near 45)
                41, 39, 37, 35, 33, 31, 29, 28, 27, 26, # ages 50-59
                25, 24, 23, 22, 21, 20, 19, 18, 17, 16, # ages 60-69
                15, 14, 13, 12, 11, 10, 9, 8, 7, 6,     # ages 70-79
                5, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3)        # ages 80-90

# Create a data frame
data <- data.frame(age, crash_rate)

# Plot the data
plot <- ggplot(data, aes(x = age, y = crash_rate)) +
  geom_line(color = "red", size = 1) +
  scale_y_continuous(limits = c(0, 100), labels = scales::percent_format(scale = 1)) +  # Y-axis from 0 to 100%
  labs(title = "Relation between Age and Stair Crash Rate",
       x = "Age",
       y = "Stair Crash Rate (%)") +
  theme_minimal() +
  theme(panel.background = element_rect(fill = "white", color = NA),  # "transparent"
        plot.background = element_rect(fill = "white", color = NA))   # "transparent"

# Save the plot as a PNG with transparent background
# ggsave("stair_crash_rate.png", plot = plot, bg = "transparent", width = 8, height = 5, dpi = 300)
ggsave("stair_crash_rate.png", plot = plot, width = 8, height = 5, dpi = 300)
