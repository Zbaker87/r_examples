### Beetle dataset creation, plotting and saving demo
# Zach Baker
#January 23 2024
# Base R

#Set a seed to make this repository reproducible 
set.seed(123)
# Create a vector of bettle names, a one dimensional data structure
beetle_names <- c("Ladybug", "Stag Beetle", "Firefly Beetle", "Dung Beetle", "Jewel Beetle")

#Creating new vector for beetle length
beetle_lengths <- runif(20,1,5)

beetle_colors <- sample(c("Red", "Black", "Green", "Yellow", "Blue"), 20, replace = TRUE)

beetle_df <- data.frame(Name = sample(beetle_names, 20, replace = TRUE), Length = beetle_lengths, Color = beetle_colors)

write.csv(beetle_df, file = "data/Fake_Beetle_Data.csv")

length_chart <- barplot(height = beetle_df$Length, names = beetle_df$Name)
