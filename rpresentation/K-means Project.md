K-means Developing Data Products Project
========================================================
author: lsaa
date: 

Description of dataset
========================================================

Data on the percentage composition of eight fatty acids found by lipid fraction of 572 Italian olive oils. The data come from three regions: Southern Italy, Sardinia, and Northern Italy. Within each region there are a number of different areas. Southern Italy comprises North Apulia, Calabria, South Apulia, and Sicily. Sardinia is divided into Inland Sardinia and Costal Sardinia. Northern Italy comprises Umbria, East Liguria, and West Liguria. 

K-means app
========================================================
This app shows the different clusters on the olive dataset based 
on the region. Also a summary of the data is shown.


```r
library(pgmm); data(olive)
summary(olive[,-2])
```

```
     Region         Palmitic     Palmitoleic        Stearic     
 Min.   :1.000   Min.   : 610   Min.   : 15.00   Min.   :152.0  
 1st Qu.:1.000   1st Qu.:1095   1st Qu.: 87.75   1st Qu.:205.0  
 Median :1.000   Median :1201   Median :110.00   Median :223.0  
 Mean   :1.699   Mean   :1232   Mean   :126.09   Mean   :228.9  
 3rd Qu.:3.000   3rd Qu.:1360   3rd Qu.:169.25   3rd Qu.:249.0  
 Max.   :3.000   Max.   :1753   Max.   :280.00   Max.   :375.0  
     Oleic         Linoleic        Linolenic       Arachidic    
 Min.   :6300   Min.   : 448.0   Min.   : 0.00   Min.   :  0.0  
 1st Qu.:7000   1st Qu.: 770.8   1st Qu.:26.00   1st Qu.: 50.0  
 Median :7302   Median :1030.0   Median :33.00   Median : 61.0  
 Mean   :7312   Mean   : 980.5   Mean   :31.89   Mean   : 58.1  
 3rd Qu.:7680   3rd Qu.:1180.8   3rd Qu.:40.25   3rd Qu.: 70.0  
 Max.   :8410   Max.   :1470.0   Max.   :74.00   Max.   :105.0  
   Eicosenoic   
 Min.   : 1.00  
 1st Qu.: 2.00  
 Median :17.00  
 Mean   :16.28  
 3rd Qu.:28.00  
 Max.   :58.00  
```


How it works
========================================================
Just change the x variable or y variable to see the distribution and change the number of clusters.
