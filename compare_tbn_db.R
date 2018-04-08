# load packages & set workspace
library('data.table')
setwd('c:/Users/cth/Desktop/')
# read data as tbn
tbn <- fread('query_tbn.csv',encoding = "UTF-8")
tbn_taxa <- levels(factor(tbn$類群))
tbn_pl <- tbn[which(tbn$類群 %in% c("原藻類","苔蘚植物","非維管束植物","蕨類植物","裸子植物","被子植物"))]
tbn_pl <- tbn_pl[-grep("穿山甲|金翅雀|翻石鷸|大麗燈蛾",tbn_pl$`物種中文名`,)]



write.csv(tbn_pl,"query_tbn_pl.csv",fileEncoding = "UTF-8")

# test for changing sth.
