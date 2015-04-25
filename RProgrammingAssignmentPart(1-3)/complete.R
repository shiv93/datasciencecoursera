complete<-function(directory,id=1:332){
  
  count<-0
  id1<-numeric(length(id))
  nobs<-numeric(length(id))
  for(i in id){
    dir<-directory
    loc<-character(0)
    count<-count+1
    if(i<=9)
      loc<-paste("00",i,sep="")
    else if(i<=99)
      loc<-paste("0",i,sep="")
    else loc<-i
    dir<-paste(directory,"/",loc,".csv",sep="")
    file<-read.csv(dir)
    temp<-complete.cases(file)
    id1[count]<-i
    nobs[count]<-sum(temp)
      
  }
  x<-data.frame("id"=id1,"nobs"=nobs)
  x
  
  
  
  
}