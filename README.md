# Individual Accuracy Preliminary Study Results on MAB, CMAB, and Roulette Wheel Algorithms

In the literature, the criterion which is most frequently used to measure the performance of a bandit algorithm is its global accuracy — i.e., the cumulative reward
obtained when pulling the arms. Nevertheless, depending on the field in which bandit algorithms are used, their assessment can require deeper investigations. This is particularly true in the case of recommendation systems: global accuracy metrics are not sufficient and could in some cases be detrimental by hurting individual user satisfaction.

This preliminary study aims at observing and comparing individual accuracy in most MAB, CMAB, and Roulette Wheel algorithms.


## Getting Started

This repository contains all the results obtained for most MAB/CMAB and Roulette Wheel algorithms (with 10 runs of 100 000 iterations each) on two artificial datasets of 4 classes, 1000 instances, and 3 or 4 features depending on if you need to test full or sparse features. The datasets are available in the ArtificialDataset folder.


### Results for LinUCB

For the sparse features case global accuracy is 0.749.
Cumulative and histogram individual accuracy is represented on the figure below.
![lincubsf](https://github.com/mabresearchstudy/mabaccuracy/images/LinUCB_SF.png)

For the full features case global accuracy is 1.0.
Cumulative and histogram individual accuracy is represented on the figure below.
![linucbff](https://github.com/mabresearchstudy/mabaccuracy/images/LinUCB_FF.png)


### Results for Contextual Thompson Sampling

For the sparse features case global accuracy is 0.748.
Cumulative and histogram individual accuracy is represented on the figure below.
![ctssf](https://github.com/mabresearchstudy/mabaccuracy/images/CTS_SF.png)

For the full features case global accuracy is 1.0.
Cumulative and histogram individual accuracy is represented on the figure below.
![ctsff](https://github.com/mabresearchstudy/mabaccuracy/images/CTS_FF.png)


### Results for MABs

For UCB global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![ucb](https://github.com/mabresearchstudy/mabaccuracy/images/ucb.png)

For Thompson Sampling global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![ts](https://github.com/mabresearchstudy/mabaccuracy/images/ts.png)

For e-greedy (fixed e=0.2) global accuracy is 0.251.
Cumulative and histogram individual accuracy is represented on the figure below.
![gfix](https://github.com/mabresearchstudy/mabaccuracy/images/greedyFix.png)

For e-greedy (decreasing e) global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![gd](https://github.com/mabresearchstudy/mabaccuracy/images/greedyD.png)

For softmax global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![soft](https://github.com/mabresearchstudy/mabaccuracy/images/softmax.png)


### Results for Roulette Wheels

For classical roulette wheel global accuracy is 0.248.
Cumulative and histogram individual accuracy is represented on the figure below.
![rwc](https://github.com/mabresearchstudy/mabaccuracy/images/RouletteWC.png)

For stochastic roulette wheel global accuracy is 0.248.
Cumulative and histogram individual accuracy is represented on the figure below.
![rws](https://github.com/mabresearchstudy/mabaccuracy/images/RouletteWS.png)


### Replotting from Raw Data

All figures displayed above can be recomputed using gnuplot (https://doc.ubuntu-fr.org/gnuplot).

For CMAB you can choose to observe results in case of sparse features (25% sparsity from the original) or in case of full features.
For each type of algorithm (MAB, CMAB, or Roulette Wheel), you can access the following files:
* statsUser_history*.txt: the results obtained in terms of individual accuracy for each context (after the 10 runs of 100 000 iterations)  
* *.plot: gnuplot scripts to replot the results (Cumulative Distribution Function and histogram of individual accuracy).

To plot the results with gnuplot, use the following command: gnuplot nameOfScript.plot. 
For example, to plot results for LinUCB in case of sparse features, you have to go to CMAB/sparseFeaturesExperiment/ and enter the following command: gnuplot linucb.plot

