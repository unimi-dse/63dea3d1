# Medal Counts at Taekwondo Sport in Summer Olympics
###### R package created with R version 3.6.2
This package provides some functions which make it possible to see the medal counts achieved in Taekwondo sport by countries in Summer Olympics from the first appearance in 2000 Sydney to 2012 London, and the progress of the total medal counts depending on the increase of the participating athletes, with the aim of displaying the dominating nations in this sport.

4 variables (Year, Sport, Country, Medal) interest us in this analysis. We are going to compare 2 of them (Country, Medal) on the basis of Year and Sport, which is filtered in "Taekwondo".

Source: Summer Olympics Dataset acquired from "https://www.kaggle.com/sunilkumarmano/summer-olympics-dataset"

### Installation

###### first install the R package "devtools" if not installed:
##### install.packages('devtools') 
###### if 'devtools' is already installed:
##### require(devtools)
###### Then install the R package "olympicdom":
##### devtools::install_github('unimi-dse/63dea3d1')

### Using the Package

###### Before starting, please require the package:
##### require(olympicdom)
###### You need to install another 5 packages not to get any error; if you have installed the packages written in the DESCRIPTION, you can 'require' the necessary packages with this function:
##### reqr_necessary()
###### otherwise, you can download & require them with this function:
##### necessary_pkgs()

### Dataset

###### The dataset contains 9 variables (Year, City, Sport, Discipline, Athlete, Country, Gender, Event, Medal); to import the dataset & visualise the dataframe please use the function:

##### import_data()

### Extracting Data

###### Since we do not use all the variables, the needed 4 variables (Year, Sport, Country, Medal) are extracted and 'Sport' is filtered in "Taekwondo" with the aim of cleansing the data; to visualise the extracted dataframe, you can use the function:

##### medals_table()

## Visualising Plots

###### To visualise the plots of acquired medals by countries, please use the functions below:
##### gold_medals()
##### silver_medals()
##### bronze_medals()
##### all_medals()
