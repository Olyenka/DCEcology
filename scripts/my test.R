download.file("https://ndownloader.figshare.com/files/2292169",             
              "data/portal_data_joined.csv")
surveys <- read.csv("data/portal_data_joined.csv")
surveys
View(surveys)
head(surveys)
str(surveys)
?str()

sex <- factor(c("male","female","female","male"))
levels(sex)
nlevels(sex)

lvls <- factor(c("high","medium","low"))
levels(lvls)

as.character(lvls)
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(as.character(year_fct))

plot(surveys$sex)
levels(surveys$sex)

sex <- surveys$sex
plot(sex)
levels(sex)

levels(sex)[1] <- "undertermined"
levels(sex)
plot(sex)

levels(sex)
levels(sex)[1] <- "undertermined"
levels(sex)
levels(sex)[2] <- "female"
levels(sex)[3] <- "male"

surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = TRUE)
str(surveys)

surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = FALSE)
str(surveys)


surveys$genus <- factor(surveys$genus)
str(surveys)

library(lubridate)
install.packages("lubridate")
install.packages("stringi")
library(lubridate)
library(stringi)


my_date <- ymd("2015-01-01")
str(my_date)

my_date <- ymd(paste("2015","1","1", sep= "-"))
str(my_date)

paste(surveys$year, surveys$month, surveys$day, sep = "-")
ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))

surveys$date <- ymd(paste(surveys$year, surveys$month, surveys$day, sep = "-"))
str(head(surveys$data))

## check the missing data
(is_missing_date <- is.na(surveys$date))
data_columns <- c("year","month","day")
(missing_dates <- surveys[is_missing_date, data_columns])





