png(filename = "ideas_distribution.png", width = 800, height = 600, bg = "transparent")

# Define values and labels
values <- c(11, 2, 1, 36)
labels <- c("TikTok-Brain", "StAIr", "Stair Master", "Other Ideas")

# Define custom colors
colors <- c("#fe2858", "#040404", "#de8c9d", "#2af0ea")

# Calculate percentages for each category
percentages <- round(values / sum(values) * 100)
labels <- paste(labels, percentages, "%")

pie(values, labels = labels, col = colors, main = "Voting Result of 21 Ideas")

dev.off()
