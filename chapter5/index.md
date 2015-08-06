---
layout: page
title: Chapter 5
---

## Further Explorations in Classification

This chapter examines several other algorithms for classification including kNN and naïve Bayes. We look at the power of adding more data.


### Contents

* Evaluating classifiers: training sets and test data
* 10-fold cross validation
* Which is better: adding more data or improving the algorithm?
* the kNN algorithm
* Python implementation of kNN

### [The PDF of the Chapter]({{site.baseurl}}assets/guideChapters/DataMining-ch5.pdf)

### Python code

Page 13: divide data into buckets: [divide.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch5/divide.py)

Page 14: [nearestNeighborClassifier.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/nearestNeighborClassifier.py) from last chapter (please modify to implement 10-fold cross validation).

Page 15: one solution to implementing 10-fold cross validation: [crossValidation.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch5/crossValidation.py)

Page 36: one solution to implementing kNN: [pimaKNN.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch5/pimaKNN.py).

### Data

##### Page 13. Auto MPG Data Set.  (Quinlin 1993)

* Version divided into buckets in the format the book uses: [mpgData.zip](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch6/mpgData.zip)
* [Original Version](http://archive.ics.uci.edu/ml/datasets/Auto+MPG) from the Machine Learning Repository.

##### Page 34. Pima Indians Diabetes Data Set (National Institute of Diabetes and Digestive and Kidney Diseases)
* [pimaSmall.zip](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch6/pimaSmall.zip) (containing 100 instances divided into 10 buckets)
* [pima.zip](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch6/pima.zip) (full data set divided into 10 buckets)