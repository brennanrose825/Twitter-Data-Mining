#install.packages("rtweet")
library(rtweet)

#To search for Tweets with a specific hashtag where n=number of tweets up to 100 & include_rts does or does not include retweets in results
votecollinsout2 <- search_tweets("#votecollinsout", n=200, include_rts = FALSE)

#View tweets from query
View(votecollinsout2)

#Save the dataset to CSV file
write_as_csv(
  votecollinsout2, file_name = "votecollinsout2.csv", 
  prepend_ids = TRUE, na = "", 
  fileEncoding = "UTF-8"
)
