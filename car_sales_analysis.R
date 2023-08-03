# Mini Project: Car Sales Analysis

# Load the dataset
data("mtcars")

# Task 2: Explore the structure and summary of the dataset
str(mtcars)
summary(mtcars)

# Task 3: Calculate and visualize the average miles per gallon (mpg) for different car models
average_mpg <- aggregate(mpg ~ cyl, data = mtcars, mean)
barplot(average_mpg$mpg, names.arg = average_mpg$cyl, xlab = "Number of Cylinders", ylab = "Average MPG", main = "Average MPG by Number of Cylinders")

# Task 4: Plot a bar chart showing the number of cylinders in different car models
cylinder_counts <- table(mtcars$cyl)
barplot(cylinder_counts, xlab = "Number of Cylinders", ylab = "Count", main = "Number of Cylinders in Car Models")

# Task 5: Find the car model with the highest horsepower (hp) and the one with the lowest horsepower
max_hp_car <- mtcars[which.max(mtcars$hp), "model"]
min_hp_car <- mtcars[which.min(mtcars$hp), "model"]
cat("Car model with the highest horsepower:", max_hp_car, "\n")
cat("Car model with the lowest horsepower:", min_hp_car, "\n")

# Task 6: Calculate the correlation between mpg and weight of the cars
correlation <- cor(mtcars$mpg, mtcars$wt)
cat("Correlation between MPG and Weight:", correlation, "\n")

# Task 7: Create a scatter plot to visualize the relationship between mpg and weight
plot(mtcars$wt, mtcars$mpg, xlab = "Weight", ylab = "MPG", main = "Scatter Plot: MPG vs. Weight")

# Task 8: Determine the most fuel-efficient car model based on mpg
most_fuel_efficient <- mtcars[which.min(mtcars$mpg), "model"]
cat("Most fuel-efficient car model:", most_fuel_efficient, "\n")

# Task 9: Calculate the average miles per gallon for cars with automatic transmission and manual transmission
avg_mpg_auto <- mean(mtcars$mpg[mtcars$am == 0])
avg_mpg_manual <- mean(mtcars$mpg[mtcars$am == 1])
cat("Average MPG for automatic transmission cars:", avg_mpg_auto, "\n")
cat("Average MPG for manual transmission cars:", avg_mpg_manual, "\n")

# Task 10: Compare the average mpg between automatic and manual transmission cars using a bar chart
average_mpg_by_transmission <- aggregate(mpg ~ am, data = mtcars, mean)
barplot(average_mpg_by_transmission$mpg, names.arg = c("Automatic", "Manual"), xlab = "Transmission", ylab = "Average MPG", main = "Average MPG by Transmission")
