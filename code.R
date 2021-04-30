library(tidyverse)

url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"

dat <- read_csv(url)
download.file(url, "cancerdata.csv")

read.csv(url, header = FALSE)

tempfile()
tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)

head(dat)

read_lines("cancerdata.csv", n_max = 3)

View(dat)
library(readr)
nrow(dat)
