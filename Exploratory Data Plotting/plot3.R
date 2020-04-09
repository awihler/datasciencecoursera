library(dplyr)

# Load zipped data file from the provided URL.
# If the zip file has already been downloaded, skip this step.
data_file <- "./data/household_power_consumption.txt"
if(!file.exists(data_file)){
    fileURL <- paste0("https://d396qusza40orc.cloudfront.net",
                      "/exdata%2Fdata%2Fhousehold_power_consumption.zip")
    download.file(fileURL, destfile = data_file, method = "curl")
    unzip(zipfile=data_file, exdir = "./data")
    
    print("data zip file successfully downloaded")
}

# Read the first observation of the data to get the starting day/time of 
# the data set.
data_start_date <- read.csv(
    file.path(getwd(), "data/household_power_consumption.txt"),
    header = TRUE,
    sep = ";",
    na.strings = "?",
    nrows = 1,
    stringsAsFactors = FALSE)

# Combine the day and time and convert to date class.
# The start_data represents the first day/time of the date set.
start_data <- as.character(
    (paste(data_start_date$Date, data_start_date$Time, sep = " ")))
start_data <- strptime(start_data, format = "%d/%m/%Y %H:%M:%S")

# Convert the specified start and end day/time to date class.
start_date <- strptime(c("01/02/2007 00:00:00"), format = "%d/%m/%Y %H:%M:%S")
end_date <- strptime(c("02/02/2007 23:59:00"), format = "%d/%m/%Y %H:%M:%S")

# Calculate the number of observation to skip and the number of observations
# to include for the reduced data set.
# Reduced data set includes only the dates specified. 
skip_rows <- as.integer(as.numeric(start_date - start_data) * 24 * 60)
include_rows <- as.integer(as.numeric(end_date - start_date) * 24 * 60) + 1

# Read in the variable names of the data to use for the reduced data set.
headers <- read.csv(
    file.path(getwd(), "data/household_power_consumption.txt"),
    header = FALSE,
    sep = ";",
    as.is = TRUE,
    na.strings = "?",
    nrows = 1,
    stringsAsFactors = FALSE)

# Read in the reduced data set.
plotData <- read.csv(
    file.path(getwd(), "data/household_power_consumption.txt"),
    header = TRUE,
    sep = ";",
    col.names = (headers),
    as.is = TRUE,
    na.strings = "?",
    nrows = include_rows,
    skip = skip_rows,
    stringsAsFactors = FALSE)

# Combine the day and time and convert to date class.
# Combined day/time sued as date, the "Time" varaible is discarded.
plotData$Date <- as.character((paste(plotData$Date, plotData$Time, sep = " ")))
plotData$Date <- strptime(plotData$Date, format = "%d/%m/%Y %H:%M:%S")
plotData <- select(plotData, -Time)

# Launch png graphics device, create a new file in the working directory
png(filename = "plot3.png",
    width = 480, height = 480, units = "px")

# Set number of plots
par(mfrow=c(1,1))

# Plot multivariate line chart
with(plotData, plot(Date, 
                    Sub_metering_1, 
                    type = "l",
                    xlab = "", 
                    ylab = "Energy sub metering"))
     
with(plotData, lines(Date,
                     Sub_metering_2,
                     col = "red"))    

with(plotData, lines(Date,
                     Sub_metering_3,
                     col = "blue"))   

# Legend
legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

# Close the png file device
dev.off()
