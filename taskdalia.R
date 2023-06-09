SydneyData <- read.csv('G3_sydney_hobart_times.csv')
SydneyData
View(SydneyData)

nrow(SydneyData)# number of rows
ncol(SydneyData)  #n.of cols
rownames(SydneyData)
colnames(SydneyData) # name to cols

str(SydneyData)
summary(SydneyData)  # to get summary statistical of data mean,mode....

#head(SydneyData) # first 6 rows
#tail(SydneyData)  # last six rows
Sydney<-data.frame(SydneyData) # convert data to data frame
Sydney
Result<-data.frame(Sydney[Sydney$Year=='1949',])# get specific part in data
Result
Result2<-data.frame(Sydney[Sydney$Time,])
Result2
#Select specific data.
Per.type <- Sydney[ 2, 3 ]
Per.type
#specific row and col
Setinfo <- Sydney[ c(1:5), c("Year", "fleet_start")]
Setinfo
# can get first 25 row
Setinfo <- head(Sydney,25)
Setinfo


Sydney <- data.frame(SydneyData) # convert data to data frame
Sydney
Result <- data.frame(Sydney[Sydney$Time=='6.59861111111111 day',])# get specific part in data
Result
Result2 <- data.frame(Sydney[Sydney$fleet_start,])
Result2
test <- as.numeric(Sydney$fleet_start) #to make height  numeric only
test

complete.cases(Sydney)  # to get NA places by get False in it

Sydney[!complete.cases(Sydney),]  # to get Rows in  missing data

#filter Data
Sydney
#to get each speecies data
filter1<-Sydney[Sydney$Year >2000]
filter2<-Sydney[Sydney$Year >1949&&Sydney$Year<1960]
filter3<-Sydney[Sydney$Year >=1960&&Sydney$Year<2000]




filter1
filter2
filter3

#extract data from data frame
filter4<-Sydney[Sydney$Year==2000, c("Year","Time")]
filter4
# to convert data into numeric and get rid of comma in numbers
Sydney$fleet_start <- as.numeric(Sydney$Year)
Sydney$fleet_start
Sydney$fleet_start <- gsub(",",".",Sydney$Year)
Sydney$fleet_start
Sydney$fleet_start <- as.numeric(Sydney$Year)

#logical operator
is.na(Sydney)    # get true result for Na value otherwise get false
any(is.na.data.frame(Sydney))  #get result True

# Function to data
Sydney$Year
NewSydney <- Sydney[,]
NewSydney


Z<- mean(Sydney$Year)    #to get the mean of data height
Z

calYear<-function(Year)
{
  return(Year>2000)
}

# new names of col
colnames(Sydney) <- (c(Species="Types",diameter="Lenght of diam"))
colnames(Sydney)

#DEAL with missing data
missing_values <- sum(is.na(Sydney))
missing_values



# remove Na value
Sydney<- na.omit(Sydney)
Sydney

# get data without duplicate
Sydney <- unique(Sydney)
Sydney

# visulize data with histogram
Sydney <- read.csv("G3_sydney_hobart_times.csv")
draw_hist <- ggplot(Sydney,aes(fleet_start))
draw_hist
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 5)
draw_hist + geom_histogram(color="red")
draw_hist + geom_histogram(fill="blue")
draw_hist + geom_histogram(alpha = 0.5)
draw_hist + geom_histogram() + ggtitle("Age of Passengers")
draw_hist + geom_histogram() + labs(x="Passenger age", y="Numbers")












