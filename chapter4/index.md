---
layout: page
title: Chapter 4
---

## Classification
In the previous chapters we used people’s ratings of products to make recommendations. In this chapter we use attributes of the products themselves to make recommendations. This approach is used by Pandora among others.

### Contents

* Introduction to Pandora-like systems
* The importance of selecting appropriate attributes and values
* An example: music attributes and a nearest neighbor approach
* Data normalization
* Modified Standard Score
* Python code: music, attributes, and a simple nearest neighbor approach
* A sports example.
* Ways of acquiring attribute data

### [The PDF of the Chapter]({{site.baseurl}}assets/guideChapters/DataMining-ch4.pdf)

### Python code

The code for the example on page 4-13:  [ch4-filteringdata.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/ch4-filteringdata.py).

page 46: the template to use for you to write the getMedian and getAbsoluteDeviation methods: [testMedianAndASD.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/testMedianAndASD.py). You will also need athletesTrainingSet.txt.

p48: the template to use for you to write the normalizeColumn method: [normalizeColumnTemplate.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/normalizeColumnTemplate.py). You will also need athletesTrainingSet.txt.

p52: the template for the nearestNeighbor method: [classifyTemplate.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/classifyTemplate.py). You will also need athletesTrainingSet.txt.

p53: code for the complete nearest neighbor classifier – [nearestNeighborClassifier.py](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/ch4/nearestNeighborClassifier.py)



### Data

*  [athletesTrainingSet.txt](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/athletesTrainingSet.txt)
*  [athletesTestSet.txt](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/athletesTestSet.txt)
* [irisTrainingSet.data](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/irisTrainingSet.data)
* [irisTestSet.data](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/irisTestSet.data)
* [mpgTrainingSet.txt](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/mpgTrainingSet.txt)
* [mpgTestSet.txt](https://raw.githubusercontent.com/zacharski/pg2dm-python/master/data/ch4/mpgTestSet.txt)
