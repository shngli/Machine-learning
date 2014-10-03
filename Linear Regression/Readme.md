Linear regression with 1 variable to predict profits for a food truck. You own a restaurant franchise and are considering different cities for opening a new outlet. ex1data1.txt constains the population of different cities and the profit of a food truck in each city (negative profit = a loss). Use this data to select which city to expand to next.

Run ex1.m:

1. **warmUpExercise.m** returns a 5x5 identity matrix
2. **plotData.m** creates a 2d scatterplot of profit (in $10,000s)  vs population (in 10,000s). Output: **plot1.jpg** and **plot2.jpg**. 
3. **computeCost.m** computes the cost function J(theta) of the linear regression with the objective to minimize the cost. Expect a cost of approximately 32.07.
4. **gradienDescent.m** updates the value of theta within each iteration, which is then used to predict the profits in areas of 35,000 and 70,000 people.

Linear regression with multiple variables to predict housing prices. You are selling your house and you want to determine a reasonable market price. ex1data2.txt constains a set of housing prices in Portland, Oregon, where the first column is the size of the house (in square feet), the second column is the number of bedrooms and the third column is the price of the house.
Run ex1_multi.m:

1. **featureNormalize.m** computes the mean of each feature and subtract it from the dataset, then scale the feature values by their respective standard deviations.
2. **computeCostMulti.m** and **gradientDescentMulti.m** implement the cost function and gradient descent for the linear regression, then predict the price of a house with 1650 square feet and 3 bedrooms. 
3. **normalEqn.m** calculates the value of theta, which is then used to predict the price of a house with 1650 square feet and 3 bedrooms.
