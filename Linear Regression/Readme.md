- **ex1.m** and **ex1 multi.m** - Matlab scripts for the exercise
- **ex1data1.txt** - Dataset for linear regression with one variable containing the population of different cities and the profit of a food truck in each city
- **ex1data2.txt** - Dataset for linear regression with multiple variables containing the size of houses (in square feet), the number of bedrooms and the price of the houses in Portland, Oregon
- **warmUpExercise.m** - Function to return a 5x5 identity matrix
- **plotData.m** - Function to display the dataset
- **computeCost.m** - Function to compute the cost of linear regression; expected cost of 32.07
- **gradientDescent.m** - Function to run gradient descent and to predict profits in areas of 35,000 and 70,000 people
- **computeCostMulti.m** - Cost function for multiple variables
- **gradientDescentMulti.m** - Gradient descent for multiple variables
- **featureNormalize.m** - Function to computes the mean of each feature and subtract it from the dataset, then scale the feature values by their respective standard deviations
- **normalEqn.m** - Function to compute the normal equations, which is then used to predict the price of a house with 1650 square feet and 3 bedrooms.

**Output**:
1) **plotData.m** creates a 2d scatterplot of profit (in $10,000s)  vs population (in 10,000s). 

- Scatterplot of training data 

![plot1.jpg](https://github.com/shngli/Machine-learning/blob/master/Linear%20Regression/plot1.jpg) 

- Training data with linear regression fit
![plot2.jpg](https://github.com/shngli/Machine-learning/blob/master/Linear%20Regression/plot2.jpg)

2) **ex1.m** calculates the cost function J(theta) over a grid of values using computeCost.m. 

- Surface plot of the cost function 
![cost function J.jpg](https://github.com/shngli/Machine-learning/blob/master/Linear%20Regression/cost%20function%20J.jpg)

- Contour plot of the cost function, showing the minimum 
![cost function J contour.jpg](https://github.com/shngli/Machine-learning/blob/master/Linear%20Regression/cost%20function%20J%20contour.jpg)

3)  **ex1_multi.m** plots the convergence of gradient descent with an appropriate learning rate 
![gradient descent convergence.jpg](https://github.com/shngli/Machine-learning/blob/master/Linear%20Regression/gradient%20descent%20convergence.jpg)
