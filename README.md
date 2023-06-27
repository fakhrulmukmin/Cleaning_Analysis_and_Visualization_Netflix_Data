# Cleaning_Analysis_and_Visualization_Netflix_Data

# Dataset

Netflix, a widely popular streaming service, offers an extensive catalog of movies, TV shows, and original content. The provided dataset is a refined version of the original dataset, which can be accessed [[Here](https://www.kaggle.com/datasets/shivamb/netflix-shows)]. It encompasses the contents added to Netflix from 2008 to 2021, including the oldest content from 1925 and the newest from 2021. This dataset has been meticulously cleaned using PostgreSQL and visualized using Tableau. Its purpose is to serve as a platform for testing and showcasing data cleaning and visualization skills. The cleaned dataset can be found below, and the Tableau dashboard is accessible through this link.

# Data Cleaning

We are going to:

•	Treat the Nulls

•	Treat the duplicates

•	Populate missing rows

•	Drop unneeded columns

•	Split columns

•	Extra steps and more explanation on the process will be explained through the code comments

# Data Analysis and Visualization 

After cleaning, the dataset is set for some analysis and visualization with Power BI.
![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/8e7275e3-e2d1-4c06-8a26-db1117cd80c7)
This first visualization shows the two categories of content in the dataset which are Movie and Tv show, As we can see the majority of the content is Movie which takes 69.69%.

In PowerBI dashboard, there is a filter allowing users to select a specific range of years between 2008 and 2021 to analyze yearly records. Additionally, to provide an alternative and more visually intuitive perspective, a bar chart showcasing the distribution of movies and TV shows by country is displayed.

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/2dafb5e6-05a6-4bd0-a618-414dd29c315d)

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/5d233bf5-1e73-4d7b-a408-43e3a910c08c)

The time series chart represents the cumulative count of content additions on Netflix from 2008 to 2021. The data reveals that the highest influx of movies and TV shows occurred in 2019. In the PowerBI  sheet, there is a convenient filter to explore the specific monthly additions of movies and TV shows, allowing users to gain insights into the distribution throughout the year.

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/14b04235-d35a-46d3-aa0a-2c8a93d95d4c)

The rating system provides an assessment of a motion picture's suitability for specific audiences, considering its content. This chart presents the top ratings of content available on Netflix.

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/2394f37e-a5b3-4b30-bae9-aa7b2c1bebc7)

It is evident from the chart that a predominant majority of the content available on Netflix carries a TV-MA rating, which, according to the TV Parental Guidelines in the United States, indicates that the content is intended for mature audiences.  

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/c98f488d-2444-49c2-8031-bb0cd2dc57e2)

The line chart illustrates a comparison between the number of movies and TV shows added to Netflix over the years, revealing a consistent trend of greater movie additions. Notably, in 2013, the number of content additions for both movies and TV shows was nearly equal, with movies at 6 and TV shows at 5. This observation indicates that during the initial five-year period, Netflix primarily focused on incorporating movies into Netflix.

![image](https://github.com/fakhrulmukmin/Cleaning_Analysis_and_Visualization_Netflix_Data/assets/104128728/e2054bd8-491b-42d3-b335-f0b3b84035c9)

This chart illustrates the production years of movies and TV shows with the highest content volume on Netflix. It reveals a notable trend: between 2012 and 2018, Netflix consistently prioritized adding recent content, ensuring that the number of titles released in each subsequent year surpassed those from previous years. However, in 2019, there was a decline in content additions. While this could potentially be attributed to the impact of the Covid-19 pandemic

# Recommendation for Netflix

Based on the provided data, there are a few observations that can inform suggestions for Netflix's future actions:

Content Focus: Netflix should continue prioritizing the addition of recent content as they did between 2012 and 2018. This approach ensures that the platform remains up-to-date and offers a fresh and engaging selection to its audience.
Analysis of 2019 Decline: Further analysis is required to determine the reasons behind the decline in content additions in 2019. If the decline is indeed attributed to the Covid-19 pandemic, Netflix should consider adjusting its content acquisition strategies to mitigate future disruptions and ensure a steady flow of new releases.

TV Show Expansion: While movies have consistently dominated content additions on Netflix, the near parity of movie and TV show additions in 2013 suggests an opportunity to focus on expanding the TV show library. Analyzing audience preferences and investing in high-quality TV show productions can help attract and retain subscribers.

Continuous Evaluation: Netflix should consistently monitor and evaluate the trends in content additions and viewer preferences to adapt their content acquisition strategies accordingly. This includes assessing the demand for various genres, analyzing viewer engagement metrics, and leveraging data-driven insights to inform decision-making.

By staying agile, responsive to viewer demands, and mindful of market trends, Netflix can maintain its position as a leading streaming platform and cater to evolving audience preferences in the future.







