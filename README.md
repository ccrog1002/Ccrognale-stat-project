# Ccrognale-stat-project
project for stat class


First, the data in my project is from the show Succession on HBO. The data is based on a recording of various occurances of betrayals throughout the show. The data is categorized by 4 different variables. 2 Quantitative and 2 Qualitative. 

My two quantitative variables are the scale of importance of each occurance and the scale of how shocking each occurance was. 
My two qualitative variables are the relationship between the characters involved in the occurance and the reason why the characters betrayed the other in the occurance. 

My script starts by defining and examining each category and gathering variables such as the mean and standard deviations. 

Table 1 consists of each variable on it's own.

Table 2 consists of the two qualitative variables 

Step 3 ccreates a chi-square test of these two qualitative variables, and the results are:
X-squared = 12.61, df = 12, p-value = 0.398

Step 4 utilizes ANOVA to return the following information from the ANOVA test

              Df Sum Sq Mean Sq F value Pr(>F)
data$relation  1   2.11   2.108   0.429  0.517
Residuals     31 152.13   4.908      

Step 5 gets the correlation between the two quantitative variables 

Step 6 gets the linear relationship between the quantitative variables

Step 7 creates the first graph of the two quantitative variables, plotting the data and creating lines through the line of regression, X, and Y 

Step 8 creates the graph of residuals for the two variables and determines the line of 0 for the residuals. 

-------------------------------------------

Data cleaning and collecting

Most of my scripts came from previous projects and I organized each step into the preset categories. 

At first I tried organizing my data by episode, but I realized most of my data came from rewatching specific parts of the show or by randomly popping in my head. Instead, I added a column for the variables where I added the season, episode, and occurance in the episode. This gave each variable a unique indentifier and also helped me to further categorize my data if necessary. 

