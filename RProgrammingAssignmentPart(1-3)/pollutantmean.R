denom<-0
sum1<-0
  pollutantmean<- function(directory,pollutant,id=1:332){
          for(i in id){
           # dir<-"D:/DataScience/R/Assignments/specdata/"
            dir <- "specdata"
            loc<-character(0)
              if(i<=9)
                loc<-paste("00",i,sep="")
              else if(i<=99)
                loc<-paste("0",i,sep="")
              dir<-paste(dir,loc,".csv",sep="")
              file<-read.csv(dir,header=TRUE)
              col<-file[[pollutant]]
              non_na<-!is.na(col)
              denom<- sum(non_na)+denom
              sum1<-sum(col,na.rm=TRUE)+sum1
                                }
  
      sum1/denom
  
  
  
                                                        }