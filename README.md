# Domination of Countries in Summer Olympics

This package provides some functions which make it possible to see the medal counts achieved in Taekwondo sport by countries in Summer Olympics from the first appearance in 2000 Sydney to 2012 London, and the progress of the total medal counts depending on the increase of the participating athletes.

Source: Summer Olympics Dataset acquired from "https://www.kaggle.com/sunilkumarmano/summer-olympics-dataset"

## Installation

###### first install the R package "devtools" if not installed:
##### install.packages('devtools') ###### and ##### require(devtools)
###### Then install the R package "olympicdom":
##### devtools::install_github('unimi-dse/63dea3d1')

## Using the Package

###### Before starting, please require the package:
##### require(olympicdom)
###### You need to install another 5 packages not to get any error; if you have installed the packages written in the DESCRIPTION, you can 'require' the necessary packages with this function:
##### reqr_necessary()
###### otherwise, you can download them with this function:
##### necessary_pkgs()

## Dataset

###### The dataset contains 9 variables (Year, City, Sport, Discipline, Athlete, Country, Gender, Event, Medal); to visualise the dataframe please use the function:

##### import_data()

## Extracting Data

###### Since we do not need all the variables, 3 variables are extracted filtered by "Taekwondo" with the aim of cleansing the data; to visualise the extracted dataframe please use the function:

##### medals_table()

