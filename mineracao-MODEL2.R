library(igraph)
library(tm)
library(utf8)
library(readr)
library(stringr)
library(dplyr)
library(stringr)
library(qdap)
library(wordcloud)
library(skimr)
install.packages("skimr")
install.packages("rJava")
install.packages("qdap")

rd.dataframe <- read.csv("C:/Users/erlon/OneDrive/R/Data/Dataframes/dataframe_200519.csv")

rd.df.dataframe <- as.data.frame(rd.dataframe)
df.data <- dmy(rd.df.dataframe$date)
ggplot(df.data)

ggplot(df.data)
?ggplot

skim(df.data)


table(rd.dataframe == "ES")

summary(rd.dataframe$date)


df11.UFs <- table(df11$UF)
ord.df11.UFs <- sort(df11.UFs, decreasing = TRUE)
df.df11 <- as.data.frame(ord.df11.UFs)
df.df11
plot(df.tags)


df11.users <- table(df11$user)
ord.df11.users <- sort(df11.users, decreasing = TRUE)
df.df11.users <- as.data.frame(ord.df11.users)
df.df11.users
plot(df.tags)


df11.data <- table(df11$date)
ord.df11.data <- sort(df11.data, decreasing = TRUE)
df.df11.data <- as.data.frame(ord.df11.data)
df.df11.data
plot(df.tags)



UFs <- table(dataframe$UF)
ord_UFs <- sort(UFs, decreasing = TRUE)
df.UFs <- as.data.frame (ord_UFs)
plot(df.UFs)
df.UFs


df13 <- read.csv("C:/Users/erlon/OneDrive/R/Data/Model2/13.csv")

df13$query <- paste(value ="MoroSupremo")

salvar.df13 <- "C:/Users/erlon/OneDrive/R/Data/Model2/13.csv"
write_csv(x = df13, path = salvar.df13)


