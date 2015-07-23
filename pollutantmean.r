pollutantmean <- function(directory, pollutant=c("nitrate","sulfate"), id=1:332) {
    directory<-"specdata"
    files<-list.files(directory,full.names = TRUE)
    if (pollutant=="sulfate") {
        colIndex<-2
    }
    if (pollutant=="nitrate"){
        colIndex<-3
    }
    start<- min(id)
    end<- max(id)
    dataVec<-list()
    resVec<-vector()
        for(i in 1:332) {
            dataVec[[i]] <-data.frame(read.csv(files[i], header = TRUE))
            resVec[i]<- mean(dataVec[[i]][[colIndex]],na.rm=TRUE)
        }
print(mean(resVec[start:end]))
}


