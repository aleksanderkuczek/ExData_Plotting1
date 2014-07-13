plot4 <- function () {
    
    ## This function plots plot number 3
    ## Code styling in accordance with Google's R Style Guide
    ## https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
    
    # First of all data to plot is being read using an util function located
    # in another R script.
    if(!exists("getDataToPlot", mode="function")) source("get_data_to_plot.R")
    data <- getDataToPlot()
    
    # A new device (png file) is open.
    png("plot4.png", width = 480, height = 480)
    # Setting number of plots on image
    par(mfcol = c(2,2))
    # Plot1 is being drawn.
    plot(data[, 1] ~ data [, 8], 
         type = "o", 
         pch = "", 
         xlab= "", 
         ylab = "Global Active Power (kilowatts)")
    # Plot2 is being drawn.
    plot(data[, 5] ~ data [, 8], 
         type = "o", 
         pch = "", 
         xlab= "", 
         ylab = "Energy sub metering")
    points(data[, 6] ~ data [, 8], 
           type = "o", 
           pch = "",
           col = "red")
    points(data[, 7] ~ data [, 8],
           type = "o", 
           pch = "", 
           col = "blue")
    legend("topright", 
           c(names(data)[5], names(data)[6], names(data)[7]), 
           col = c("black", "red", "blue"), 
           lwd = 1)
    # Plot3 is being drawn.
    plot(data[, 3] ~ data [, 8], 
         type = "o", 
         pch = "", 
         xlab= "datetime", 
         ylab = "Voltage")
    # Plot4 is being drawn.
    plot(data[, 2] ~ data [, 8], 
         type = "o", 
         pch = "", 
         xlab= "datetime", 
         ylab = names(data)[2])
    # A connection to device is closed.
    dev.off()
}

