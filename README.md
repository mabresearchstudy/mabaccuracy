Preliminary study of the paper "Global versus individual accuracy in contextual multi-armed bandit" (Nicolas Gutowski, Tassadit Amghar, Olivier Camp, Fabien Chhel) - SAC '19: Proceedings of the 34th ACM/SIGAPP Symposium on Applied Computing April 2019 Pages 1647–1654 https://doi.org/10.1145/3297280.3297440

# Individual Accuracy Preliminary Study Results on MAB, CMAB, and Roulette Wheel Algorithms

In the literature, the criterion which is most frequently used to measure the performance of a bandit algorithm is its global accuracy — i.e., the cumulative reward
obtained when pulling the arms. Nevertheless, depending on the field in which bandit algorithms are used, their assessment can require deeper investigations. This is particularly true in the case of recommendation systems: global accuracy metrics are not sufficient and could in some cases be detrimental by hurting individual user satisfaction.

This preliminary study aims at observing and comparing individual accuracy in most MAB, CMAB, and Roulette Wheel algorithms.


## Overview

This repository contains all the results obtained for most MAB/CMAB and Roulette Wheel algorithms (with 10 runs of 100 000 iterations each) on two artificial datasets of 4 classes, 1000 instances, and 3 or 4 features depending on if you need to test full or sparse features. The datasets are available in the ArtificialDataset folder.


### Results for LinUCB

For the sparse features case global accuracy is 0.749.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/LinUCB_SF.png)

For the full features case global accuracy is 1.0.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/LinUCB_FF.png)


### Results for Contextual Thompson Sampling

For the sparse features case global accuracy is 0.748.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/CTS_SF.png)

For the full features case global accuracy is 1.0.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/CTS_FF.png)


### Results for SW-LinUCB

We have defined a new approach built upon the combination of the original LinUCB algorithm and a sliding window: SW-LinUCB.

For the sparse features case global accuracy is 0.746.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/SWLinUCB_SF.png)

For the full features case global accuracy is 0.991.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/SWLinUCB_FF.png)


### Results for MABs

For UCB global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/ucb.png)

For Thompson Sampling global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/ts.png)

For e-greedy (fixed e=0.2) global accuracy is 0.251.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/greedyFix.png)

For e-greedy (decreasing e) global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/greedyD.png)

For softmax global accuracy is 0.250.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/softmax.png)


### Results for Roulette Wheels

For classical roulette wheel global accuracy is 0.248.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/RouletteWC.png)

For stochastic roulette wheel global accuracy is 0.248.
Cumulative and histogram individual accuracy is represented on the figure below.
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/RouletteWS.png)


### Comparisons between UCB, LinUCB, and SW-LinUCB

Cumulative and histogram individual accuracy are represented on the figure below (for each algorithm).
![](https://github.com/mabresearchstudy/mabaccuracy/raw/master/images/comparisons.jpg)


## Replotting from Raw Data

All figures displayed above can be recomputed using gnuplot (https://doc.ubuntu-fr.org/gnuplot).

For CMAB you can choose to observe results in case of sparse features (25% sparsity from the original) or in case of full features.
For each type of algorithm (MAB, CMAB, or Roulette Wheel), you can access the following files:
* statsUser_history*.txt: the results obtained in terms of individual accuracy for each context (after the 10 runs of 100 000 iterations)  
* *.plot: gnuplot scripts to replot the results (Cumulative Distribution Function and histogram of individual accuracy).

To plot the results with gnuplot, use the following command: gnuplot nameOfScript.plot. 
For example, to plot results for LinUCB in case of sparse features, you have to go to CMAB/sparseFeaturesExperiment/ and enter the following command: gnuplot linucb.plot

