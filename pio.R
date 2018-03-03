require(dplyr)

getwd()

files <- file.info(list.files("C:/Users/livin/OneDrive/Documents/Free19/Reports"))
tail(files, 2)

filenames <- rownames(files)

latest <- filenames[length(filenames)]
latest


dir1 <- paste("~/Free19/Reports/", latest, "/report.csv", sep="")

# turn comes, OOP p1 to act

report1 <- read.csv(dir1, skip=3)

d1 <- tbl_df(report1)

# highest checked turn cards (original order in place)

fcheck1 <- d1 %>%
  #group_by(Turn) %>%
  top_n(n = 8, wt = CHECK)

# lowest checked turn cards (bet most frequent)

fbet1 <-top_n(d1, n = -8, wt = CHECK)

latest
fcheck1
fbet1

d1





#######################################################################################################################


# join multiple aggregration reports by turn card, to find line for each player
# p1 acted, p2 responds to given action

report2 <- read.csv("~/Free19/Reports/AggregatedReport_2017-06-22_10-19-14/report.csv", skip=3)

d2 <- tbl_df(report2)

# highest checked turn cards (original order in place)

fcheck2 <- top_n(d2, n = 8, wt = CHECK)


# lowest checked turn cards (bet most frequent)

fbet2 <-top_n(d2, n = -8, wt = CHECK)

fcheck2
fbet2

