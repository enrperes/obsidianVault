---
title: "Data Science"
author: "Massimo Franceschet"
output:
  ioslides_presentation:
    css: ../style.css
    incremental: yes
editor_options: 
  chunk_output_type: inline
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(cache = TRUE, message = FALSE, warning = FALSE)
```

## Data Science

> Data science is an exciting discipline that allows you to turn raw data into understanding, insight, and knowledge. **Hadley Wickham**

> Instead of using data just to become more efficient,  we can use data to become more humane and to connect with ourselves and others at a deeper level. **Giorgia Lupi**



## The Hadley Wickham's view

<iframe width="560" height="315" src="https://www.youtube.com/embed/go5Au01Jrvs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## The Giorgia Lupi's view

<iframe width="560" height="315" src="https://www.youtube.com/embed/6wzu0Kvmvw4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Data Science graph

<div style="text-align:center"><img src ="data-science.png"/></div>

## The Giorgia Lupi view

<div style="text-align:center"><img width = "600" height = "800" src ="Lupi1.jpg"/></div>
<div style="text-align:center"><img width = "600" height = "800" src ="Lupi2.jpg"/></div>
<div style="text-align:center"><img width = "600" height = "800" src ="Lupi3.jpg"/></div>
<div style="text-align:center"><img width = "600" height = "800" src ="Lupi4.jpg"/></div>


## Import

* first you must import your data into R
* this typically means that you take data stored in a file, database, or web API, and load it into a data frame in R 
* if you canâ€™t get your data into R, you canâ€™t do data science on it

## Tidy

* once youâ€™ve imported your data, it is a good idea to **tidy** it
* tidying your data means storing it in a consistent form that matches the semantics of the dataset with the way it is stored 
* in brief, when your data is tidy, each column is a variable and each row is an observation
* tidy data is important because the consistent structure lets you focus on questions about the data, not fighting to get the data into the right form to answer your questions

## Transform

* once you have tidy data, a common first step is to **transform** (or **query**) it 
* transformation includes: 
    * narrowing in on observations of interest (like all people in one city, or all data from the last year) 
    * creating new variables that are functions of existing variables (like computing velocity from speed and time)
    * calculating a set of summary statistics (like counts or means)
* together, tidying and transforming are called **wrangling**, because getting your data in a form that's natural to work with often feels like a fight!

## Visualize and model

* once you have tidy data with the variables you need, there are two main engines of knowledge generation: **visualisation** and **modelling** 
* these have complementary strengths and weaknesses so any real analysis will iterate between them many times

## Visualize

* **visualisation** is a fundamentally human activity
* good visualisation will show you things that you did not expect, or raise new questions about the data
* a good visualisation might also hint that you're asking the wrong question, or you need to collect different data 
* visualisations can surprise you, but **don't scale** particularly well because they require a human to interpret them

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/jbkSRLYSojo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Model 

* **models** are complementary tools to visualisation 
* the goal of a model is to provide a simple low-dimensional summary of a dataset 
* ideally, the model will capture true **signals** (i.e. patterns generated by the phenomenon of interest) and ignore **noise** (i.e. random variation that youâ€™re not interested in) 
* models are a fundamentally mathematical or computational tool, so they generally scale well
* but "*the map is not the territory*": every model makes assumptions, and these make a difference between reality and a model of reality

## Communicate

* the last step of data science is **communication**, an absolutely critical part of any data analysis project 
* it doesn't matter how well your models and visualisation have led you to understand the data unless you can also communicate your results to others, including the future you

## Hypothesis generation or confirmation?

* itâ€™s possible to divide data analysis into two camps: hypothesis generation and hypothesis confirmation
* the focus of this course is on **hypothesis generation**, or data exploration 
* here youâ€™ll look deeply at the data and, in combination with your subject knowledge, generate many interesting hypotheses to help explain why the data behaves the way it does 
* you evaluate the hypotheses informally, using your skepticism to challenge the data in multiple ways


## Tidyverse

We'll follow the data science graph using the [tidyverse](https://www.tidyverse.org) approach developed by Hadley Wickham

> The tidyverse is an opinionated collection of R packages designed for data science. All packages share an underlying design philosophy, grammar, and data structures. Hadley Wickham

Install the complete tidyverse with:

```{r eval = FALSE}
install.packages("tidyverse")
```


## Big data

>Big data refers to datasets whose size is beyond the ability of typical database software tools to capture, store, manage, and analyze

* this course proudly focuses on small, in-memory datasets
* this is the right place to start because you canâ€™t tackle big data unless you have experience with small data

## Big data solutions

1. while the complete data might be big, often the data needed to answer a specific question is small; you might be able to find a **sample** or summary that fits in memory and still allows you to answer the question that you're interested in
1. you can **scale up** or **scale out** your hardware 
1. you can store (in secondary memory) your dataset in a **database**  and use packages like [dbplyr](https://cran.r-project.org/web/packages/dbplyr/index.html) to work with remote database tables as if they are in-memory data frames
1. you can take advantage of a **cloud storage and computing system**, like [BigQuery](https://cloud.google.com/bigquery?hl=en), and access it from R with package [bigrquery](https://CRAN.R-project.org/package=bigrquery) 
1. finally, you can use a **cluster computing platform** that allows you to spread your data and your computations across multiple machines and work with packages like [sparklyr](https://spark.rstudio.com) 


## Blockchain 

* informally, a **blockchain** is a time-stamped record of any kind of information, organized into blocks that are chained together 
* more formally, a blockchain is: 
   * a **distributed system** 
   * using **cryptography** 
   * to secure an evolving **consensus** 
   * about a **token** with economic value


## Real-time data

* [Processing](https://processing.org) is a flexible software sketchbook and a language for learning how to code within the context of the visual arts
* we will use Processing to show some **customized data visualization** that do not fit into the regular grammar of graphics used in statistics
* [Arduino](https://www.arduino.cc)  is an open-source electronics platform based on easy-to-use hardware and software 
* Arduino boards are able to read inputs - light on a sensor, a finger on a button, or a Twitter message - and turn it into an output - activating a motor, turning on an LED, publishing something online
* we will pair Arduino and Processing to make an example of **real-time data visualization**