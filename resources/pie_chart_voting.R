# Set up PNG output
png(filename = "ideas_distribution.png", width = 800, height = 600)

# Define values and labels
values <- c(11, 2, 1, 36)
labels <- c("Idea 1", "Idea 2", "Idea 1", "Other")

# Define custom colors
colors <- c("#040404", "#de8c9d", "#fe2858", "#2af0ea")  # TikTokBlack, TikTokPink, TikTokRed, TikTokLightBlue

# Calculate percentages for each category
percentages <- round(values / sum(values) * 100)
labels <- paste(labels, percentages, "%")  # Combine labels with percentages

# Plot the pie chart
pie(values, labels = labels, col = colors, main = "Ideas Distribution")

# Close the graphics device
dev.off()
