#https://github.com/cleuton/datascience/blob/master/nlp/CorrelacaoPalavrasTweets.ipynb

install.packages("instaR")
install.packages("rtweet")
install.packages("twitteR")
install.packages("ROAuth")
install.packages("tidytext")
install.packages("widyr")
install.packages("ggraph")

install.packages("quanteda") 
install.packages("readtext") 
install.packages("preText")


library(twitteR)
library(ROAuth)
library(httr)
library(plyr)
library(stringr)
library(tidytext)
library(readr)
library(dplyr)
library(widyr)
library(ggplot2)
library(igraph)
library(ggraph)
library(rtweet)
library(instaR)

query <- "string"
start <- '2020-04-01'
stop <- '2020-04-29'

# since = start, until = stop
setup_twitter_oauth('xxxxxx', 'xxxxx', 'xxxxxxx', 'xxxxxxxx')

# coleta <- searchTwitter(query, lang='pt-br', n = 5000, retryOnRateLimit=1)
coleta.vitoria_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-20.2965565,-40.3039501,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.rio_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-22.913321,-43.220743,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.sp_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-23.579744,-46.642574,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.curitiba_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-25.435491,-49.270969,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.poa_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-30.032487,-51.193441,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.bsb_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-15.801605,-47.881437,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.bh_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-19.920098,-43.938105,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.flps_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-27.599250,-48.524392,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.cmpgrd_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-20.475824,-54.625427,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.sal_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-12.952197,-38.465960,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.aracaju_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-10.945608,-37.064319,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.maceio_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-9.638907,-35.727593,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.recife_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-8.060813,-34.886286,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.joaopessoa_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-7.122136,-34.847945,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.natal_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-5.783227,-35.200924,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.fortaleza_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-3.736968,-38.521739,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.saoluis_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-2.544967,-44.289615,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.belemdopara_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-1.422741,-48.465608,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.macapa_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='0.028584,-51.072920,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.boavista_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='2.819542,-60.675608,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.manaus_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-3.124887,-60.019976,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.riobranco_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-9.976578,-67.824521,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.portovelho_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-8.762797,-63.901500,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.cuiaba_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-15.603498,-56.099319,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.teresina_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-5.085739,-42.799073,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.palmas_80 <- searchTwitter(query, lang='pt-br', n = 1000000, geocode='-10.250463,-48.325070,80km',retryOnRateLimit=100, since=start, until=stop)
coleta.goiania_80 <- searchTwitter(query, lang='pt-br', n = 100000, geocode='-16.688244,-49.265367,80km',retryOnRateLimit=100, since=start, until=stop)

# ============ Por Capitais: União e transformação de matrizes, criação de dataframe e loading ===================

# transformando as listas coletadas em df
df.coleta.vitoria <- twListToDF(coleta.vitoria_80)
df.coleta.rio <- twListToDF(coleta.rio_80)
df.coleta.sp <- twListToDF(coleta.sp_80)
df.coleta.curitiba <- twListToDF(coleta.curitiba_80)
df.coleta.poa <- twListToDF(coleta.poa_80)
df.coleta.bsb <- twListToDF(coleta.bsb_80)
df.coleta.bh <- twListToDF(coleta.bh_80)
df.coleta.flps <- twListToDF(coleta.flps_80)
df.coleta.cmpgrd <- twListToDF(coleta.cmpgrd_80)
df.coleta.sal <- twListToDF(coleta.sal_80)
df.coleta.aracaju <- twListToDF(coleta.aracaju_80)
df.coleta.maceio <- twListToDF(coleta.maceio_80)
df.coleta.recife <- twListToDF(coleta.recife_80)
df.coleta.joaopessoa <- twListToDF(coleta.joaopessoa_80)
df.coleta.natal <- twListToDF(coleta.natal_80)
df.coleta.fortaleza <- twListToDF(coleta.fortaleza_80)
df.coleta.saoluis <- twListToDF(coleta.saoluis_80)
df.coleta.belemdopara <- twListToDF(coleta.belemdopara_80)
df.coleta.macapa <- twListToDF(coleta.macapa_80)
df.coleta.boavista <- twListToDF(coleta.boavista_80)
df.coleta.manaus <- twListToDF(coleta.manaus_80)
df.coleta.riobranco <- twListToDF(coleta.riobranco_80)
df.coleta.portovelho <- twListToDF(coleta.portovelho_80)
df.coleta.cuiaba <- twListToDF(coleta.cuiaba_80)
df.coleta.teresina <- twListToDF(coleta.teresina_80)
df.coleta.palmas <- twListToDF(coleta.palmas_80)
df.coleta.goiania <- twListToDF(coleta.goiania_80)

# criando vetor "sessão" com ordem numérica crescente
df.coleta.vitoria$sessao <- seq.int(nrow(df.coleta.vitoria))
df.coleta.rio$sessao <- seq.int(nrow(df.coleta.rio))
df.coleta.sp$sessao <- seq.int(nrow(df.coleta.sp)) 
df.coleta.curitiba$sessao <- seq.int(nrow(df.coleta.curitiba)) 
df.coleta.poa$sessao <- seq.int(nrow(df.coleta.poa)) 
df.coleta.bsb$sessao <- seq.int(nrow(df.coleta.bsb)) 
df.coleta.bh$sessao <- seq.int(nrow(df.coleta.bh)) 
df.coleta.flps$sessao <- seq.int(nrow(df.coleta.flps)) 
df.coleta.cmpgrd$sessao <- seq.int(nrow(df.coleta.cmpgrd)) 
df.coleta.sal$sessao <- seq.int(nrow(df.coleta.sal)) 
df.coleta.aracaju$sessao <- seq.int(nrow(df.coleta.aracaju))
df.coleta.maceio$sessao <- seq.int(nrow(df.coleta.maceio))
df.coleta.recife$sessao <- seq.int(nrow(df.coleta.recife))
df.coleta.joaopessoa$sessao <- seq.int(nrow(df.coleta.joaopessoa))
df.coleta.natal$sessao <- seq.int(nrow(df.coleta.natal))
df.coleta.fortaleza$sessao <- seq.int(nrow(df.coleta.fortaleza))
df.coleta.saoluis$sessao <- seq.int(nrow(df.coleta.saoluis))
df.coleta.belemdopara$sessao <- seq.int(nrow(df.coleta.belemdopara))
df.coleta.macapa$sessao <- seq.int(nrow(df.coleta.macapa))
df.coleta.boavista$sessao <- seq.int(nrow(df.coleta.boavista))
df.coleta.manaus$sessao <- seq.int(nrow(df.coleta.manaus))
df.coleta.riobranco$sessao <- seq.int(nrow(df.coleta.riobranco))
df.coleta.portovelho$sessao <- seq.int(nrow(df.coleta.portovelho))
df.coleta.cuiaba$sessao <- seq.int(nrow(df.coleta.cuiaba))
df.coleta.teresina$sessao <- seq.int(nrow(df.coleta.teresina))
df.coleta.palmas$sessao <- seq.int(nrow(df.coleta.palmas))
df.coleta.goiania$sessao <- seq.int(nrow(df.coleta.goiania))

# criando vetor "estado" com string para cada estado
df.coleta.vitoria$estado <- paste(value="ES")
df.coleta.rio$estado <- paste(value="RJ")
df.coleta.sp$estado <- paste(value="SP")
df.coleta.curitiba$estado <- paste(value="PR")
df.coleta.poa$estado <- paste(value="RS")
df.coleta.bsb$estado <- paste(value="DF")
df.coleta.bh$estado <- paste(value="MG")
df.coleta.flps$estado <- paste(value="SC")
df.coleta.cmpgrd$estado <- paste(value="MS")
df.coleta.sal$estado <- paste(value="BA")
df.coleta.aracaju$estado <- paste(value="SE")
df.coleta.maceio$estado <- paste(value="AL")
df.coleta.recife$estado <- paste(value="PE")
df.coleta.joaopessoa$estado <- paste(value="PB")
df.coleta.natal$estado <- paste(value="RN")
df.coleta.fortaleza$estado <- paste(value="CE")
df.coleta.saoluis$estado <- paste(value="MA")
df.coleta.belemdopara$estado <- paste(value="PA")
df.coleta.macapa$estado <- paste(value="AP")
df.coleta.boavista$estado <- paste(value="RR")
df.coleta.manaus$estado <- paste(value="AM")
df.coleta.riobranco$estado <- paste(value="AC")
df.coleta.portovelho$estado <- paste(value="RO")
df.coleta.cuiaba$estado <- paste(value="MT")
df.coleta.teresina$estado <- paste(value="PI")
df.coleta.palmas$estado <- paste(value="TO")
df.coleta.goiania$estado <- paste(value="GO")

# criando vetor "query" com string para cada estado
df.coleta.vitoria$query <- paste(value=query)
df.coleta.rio$query <- paste(value=query)
df.coleta.sp$query <- paste(value=query)
df.coleta.curitiba$query <- paste(value=query)
df.coleta.poa$query <- paste(value=query)
df.coleta.bsb$query <- paste(value=query)
df.coleta.bh$query <- paste(value=query)
df.coleta.flps$query <- paste(value=query)
df.coleta.cmpgrd$query <- paste(value=query)
df.coleta.sal$query <- paste(value=query)
df.coleta.aracaju$query <- paste(value=query)
df.coleta.maceio$query <- paste(value=query)
df.coleta.recife$query <- paste(value=query)
df.coleta.joaopessoa$query <- paste(value=query)
df.coleta.natal$query <- paste(value=query)
df.coleta.fortaleza$query <- paste(value=query)
df.coleta.saoluis$query <- paste(value=query)
df.coleta.belemdopara$query <- paste(value=query)
df.coleta.macapa$query <- paste(value=query)
df.coleta.boavista$query <- paste(value=query)
df.coleta.manaus$query <- paste(value=query)
df.coleta.riobranco$query <- paste(value=query)
df.coleta.portovelho$query <- paste(value=query)
df.coleta.cuiaba$query <- paste(value=query)
df.coleta.teresina$query <- paste(value=query)
df.coleta.palmas$query <- paste(value=query)
df.coleta.goiania$query <- paste(value=query)

# unindo os dataframes
df.union <- rbind(
   df.coleta.vitoria,
   df.coleta.rio,
   df.coleta.sp,
   df.coleta.curitiba,
   df.coleta.poa,
   df.coleta.bsb,
   df.coleta.bh,
   df.coleta.flps,
   df.coleta.cmpgrd,
   df.coleta.sal,
   df.coleta.aracaju,
   df.coleta.maceio,
   df.coleta.recife,
   df.coleta.joaopessoa,
   df.coleta.natal,
   df.coleta.fortaleza,
   df.coleta.saoluis,
   df.coleta.belemdopara,
   df.coleta.macapa,
   df.coleta.boavista,
   df.coleta.manaus,
   df.coleta.riobranco,
   df.coleta.portovelho,
   df.coleta.cuiaba,
   df.coleta.teresina,
   df.coleta.palmas,
   df.coleta.goiania
   )

# separando vetores de interesse
user <- df.union$screenName
repli_to <- df.union$replyToSN
post <- df.union$text
date <- df.union$created %>%
  format("%d/%m/%y")
hour <- df.union$created %>%
  format("%H:%M:%S")
likes <- df.union$favoriteCount
rts <- df.union$retweetCount
engagement <- likes + rts
UF <- df.union$estado
is_rt <- df.union$isRetweet
txt_incompl <- df.union$truncated
query <- df.union$query

# criando uma matriz com os vetores separados 
transf <- cbind(user,repli_to,post,date,hour,likes,rts,engagement,UF,is_rt,txt_incompl,query)

# transformando a matriz em dataframe para carga (write_csv não aceita matriz)
df.transf <- as.data.frame(transf)

# Sequência de vericação
colnames(df.transf) # colunas
dim(df.transf) # tamanho do dataframe
summary(df.transf)
summary(df.transf$query)
summary(df.transf$date)
summary(df.transf$UF)
#summary(df.transf$post)

# lodando o dataframe
load_df.transf <- "C:/Users/erlon/OneDrive/R/Data/Model3/910.csv"
write_csv(x = df.transf, path = load_df.transf)

# - =================================================== Resgate CSV ================================

Resgate <- read.csv("C:/Users/erlon/OneDrive/R/Data/Model3/907.csv")
dim(Resgate)
summary(Resgate)
summary(Resgate$date)
summary(Resgate$query)
userCol <- Resgate$user
engagementCol <- Resgate$engagement

cbind(userCol,engagementCol)


# =============== Quantidade de tweets por UF ======================================================

estados <- summary(df.transf$UF)
estados_ordenado <- sort(estados, decreasing=TRUE)
as.data.frame(estados_ordenado)
estados_ordenado


plot(estados_ordenado)
# ================= Perfis mais ativos =============================================================

perfis <- summary(df.transf$user)
perfis_ordenado <- sort(perfis, decreasing = TRUE)
as.data.frame(perfis_ordenado)
as.data.frame(estados)


# ========== Perfis x engagement ===========================

influencers <- summary(df.transf$user)
engagement <- summary(df.transf$engagement)
engagement_ord <- sort(engagement, decreasing = TRUE)
cbind(influencers,engagement_ord)

engagement_ord
influencers

  df.transf$user[857]
sort(df.transf$engagement, decreasing = TRUE)

# ========================== Coleta Única ========================================================================



df.coleta <- twListToDF(coleta)
df.coleta$sessao <- seq.int(nrow(df.coleta))


armazena_dfcoleta <- "C:/Users/erlon/OneDrive/R/Data/Model1/NovaPrevidencia_010519.csv"
write_csv(x = df.coleta, path = armazena_dfcoleta)



# ============= PACOTE rtweet ===================================================================================


coleta.rtweet <- search_tweets(q="Meu Bilhete", n = 150000, type = "mixed", include_rts = TRUE,
              geocode = NULL, max_id = NULL, parse = TRUE, token = NULL,
              retryonratelimit = FALSE, verbose = TRUE)


# 1 transforma a lista em dataframe
df.coleta.rtweet <- as.data.frame(coleta.rtweet)

# 2 separa vetores de interesse do dataframe
user <- df.coleta.rtweet$screen_name
followers <- df.coleta.rtweet$followers_count
post <- df.coleta.rtweet$text
hashtags <- df.coleta.rtweet$hashtags
data <- df.coleta.rtweet$created_at %>%
  format("%d/%m/%y") # resolvido problema com Data: classe POSIXt - transforma-se em número após carga em csv / pesquisa: https://astrostatistics.psu.edu/su07/R/html/base/html/DateTimeClasses.html / solução: https://stackoverflow.com/questions/51599365/write-csv-in-r-is-converting-my-dates-into-a-10-digit-integer
hora <- df.coleta.rtweet$created_at %>%
  format("%H:%M:%S")
curtidas <- df.coleta.rtweet$favorite_count
retweets <- df.coleta.rtweet$retweet_count
total_interacoes <- curtidas + retweets


# 3 une os vetores em uma matriz
df.interacoes <- cbind(user,followers,post,data,hora,curtidas,retweets,total_interacoes)

# 4 transforma a matriz em dataframe
df.interacoesDF <- as.data.frame(df.interacoes)

# 5 armazena o dataframe em csv
armazena_df.interacoesDF <- "C:/Users/erlon/OneDrive/R/Data/Roni7/280519_2.csv"
write_csv(x = df.interacoesDF, path = armazena_df.interacoesDF)

# tentando gerar gráfico
interacoes.plot <- df.interacoesDF$total_interacoes
data.plot <- df.interacoesDF$data
plot(data.plot,interacoes.plot)



