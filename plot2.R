plot2 <- function () {
    
    ## This function plots plot number 2
    ## Code styling in accordance with Google's R Style Guide
    ## https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
    
    # First of all data to plot is being read using an util function located
    # in another R script.
    if(!exists("getDataToPlot", mode="function")) source("get_data_to_plot.R")
    data <- getDataToPlot()
    
    # A new device (png file) is open.
    png("plot2.png", width = 480, height = 480)
    # Plot is being drawn.
    plot(data[, 1] ~ data [, 8], 
         type = "o", 
         pch = "", 
         xlab= "", 
         ylab = "Global Active Power (kilowatts)")
    # A connection to device is closed.
    dev.off()
}