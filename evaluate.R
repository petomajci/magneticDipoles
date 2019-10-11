prefix=""
#prefix="results//1//"

oofF <- list.files(paste(prefix,"oof",sep=""))
valF <- list.files("labels")
x <- c()
for (i in 1:length(oofF)){
  dd1 <- scan(paste(prefix,"oof//",oofF[i],sep=""))
  dd2 <- scan(paste("labels//",valF[i],sep=""))
  w <- which(dd1!=0)
  #print(cor(dd1,dd2))
  print(length(w))
  x <- c(x,log(mean(abs(dd1[w]-dd2[w]))))
}
print(x)
print(mean(x))
