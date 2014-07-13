getDataToPlot <- function () {
    
    ## This function reads the neccessary data from .txt file
    ## Code styling in accordance with Google's R Style Guide
    ## https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
    
    file <- "household_power_consumption.txt"
    # First only the header is read
    header <- read.table(file, sep = ";", nrows = 1, colClasses = "character")    
    header_names <- as.character(header[1, ])
    # Secondly the rest of the file is read and column names are set using
    # previously created header names. Note that only certain rows (containing 
    # dates 2007-02-01 and 2007-02-02) are being read. The starting row and the
    # number of rows to read has been caluculted earlier and hardcoded.
    data <- read.table(file, sep = ";", skip = 66637, nrows = 2880, 
               col.names = header_names)
    
    # Creating a new column with date in POSIXct standard.
    data[, 10] <- as.POSIXct(paste(data[, 1], data[, 2]), 
                            format = "%d/%m/%Y %H:%M:%S")
    # Subsetting old date and time columns.
    data <- subset(data, select = c(3, 4, 5, 6, 7, 8, 9, 10))
    names(data)[8] <- "Date and Time"
    data
}
