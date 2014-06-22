require(plyr)

run_analysis <- function () {
    top_dir <- "./UCI HAR Dataset"

    fullPath <- function (...) {
        paste(top_dir, ..., sep = "/")
    }

    fullSetPath <- function (set_name, prefix) {
        fullPath(set_name, paste0(prefix, "_", set_name, ".txt"))
    }

    activities <- read.table(fullPath("activity_labels.txt")
                            , header = FALSE
                            , as.is = c(FALSE, TRUE)
                            , col.names = c("id", "name"))
    features <- read.table(fullPath("features.txt")
                           , header = FALSE
                           , as.is = c(FALSE, TRUE)
                           , col.names = c("id", "name"))

    extract_cols <- grep("-(mean(Freq)?|std)\\(\\)", features$name)
    features$name[extract_cols] <- gsub("\\(\\)", "",
                                        gsub("-", ".",
                                             features$name[extract_cols]))

    loadAndNameData <- function (set_name) {
        data <- read.table(fullSetPath(set_name, "X")
                           , header = FALSE)
        data_subject <- read.table(fullSetPath(set_name, "subject")
                                   , header = FALSE
                                   , col.names = "subject")
        data_activity <- read.table(fullSetPath(set_name, "y")
                                    , header = FALSE
                                    , col.names = "activity")
        data_activity$activity <- factor(data_activity$activity
                                         , levels = activities$id
                                         , labels = activities$name)

        colnames(data) <- features$name

        cbind(data[, extract_cols], data_activity, data_subject)
    }

    test_data <- loadAndNameData("test")
    train_data <- loadAndNameData("train")
    interim_data <- rbind(test_data, train_data)

    ddply(interim_data, c("activity", "subject"), numcolwise(mean))
}
