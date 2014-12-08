- **ex8.m** - Matlab script for the anomaly detection exercise
- **ex8 cofi.m** - Matlab script for the recommender system exercise
- **ex8data1.mat** - First example Dataset for anomaly detection
- **ex8data2.mat** - Second example Dataset for anomaly detection
- **ex8 movies.mat** - Movie Review Dataset containing 943 users and 1682 movies
- **ex8 movieParams.mat** - Parameters provided for debugging
- **multivariateGaussian.m** - Computes the probability density function for a Gaussian distribution
- **visualizeFit.m** - 2D plot of a Gaussian distribution and a dataset
- **checkCostFunction.m** - Gradient checking for collaborative filtering
- **computeNumericalGradient.m** - Numerically compute gradients
- **fmincg.m** - Function minimization routine (similar to fminunc)
- **loadMovieList.m** - Loads the list of movies into a cell-array
- **movie ids.txt** - List of movies
- **normalizeRatings.m** - Mean normalization for collaborative filtering 
- **estimateGaussian.m** - Estimate the parameters of a Gaussian distribution with a diagonal covariance matrix
- **selectThreshold.m** - Find a threshold for anomaly detection, expected values for epsilon of 8.99e-05 and 1.38e-18, with 117 anomalites found
- **cofiCostFunc.m** - Implement the cost function for collaborative filtering, expected output of 22.22 and 31.34

**Output**:
- 2D visualization of the dataset
![Fig 1 First Dataset.png](https://github.com/shngli/Machine-learning/blob/master/Anomaly%20Detection/Fig%201%20First%20Dataset.png)

- Gaussian distribution contours of the distribution fit to the dataset
![Gaussian distribution contours of First Dataset.png](https://github.com/shngli/Machine-learning/blob/master/Anomaly%20Detection/Gaussian%20distribution%20contours%20of%20First%20Dataset.png)

- The classified anomalies
![The classified anomalies.png](https://github.com/shngli/Machine-learning/blob/master/Anomaly%20Detection/The%20classified%20anomalies.png)
