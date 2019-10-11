# nice plotting
require(RColorBrewer)
require(MASS)
scatterBarNorm <- function(x, dcol="blue", lhist=20, num.dnorm=5*lhist, ...){ 
    ## check input 
    stopifnot(ncol(x)==2) 
    ## set up layout and graphical parameters 
    layMat <- matrix(c(2,0,1,3), ncol=2, byrow=TRUE) 
    layout(layMat, widths=c(11/7, 2/7), heights=c(2/7, 11/7)) 
    ospc <- 0.5 # outer space 
    pext <- 4 # par extension down and to the left 
    bspc <- 1 # space between scatter plot and bar plots 
    par. <- par(mar=c(pext, pext, bspc, bspc), 
       oma=rep(ospc, 4)) # plot parameters 
    ## scatter plot 
    #plot(x, xlim=range(x[,1]), ylim=range(x[,2]), ...) 
	cc = cor(x[,1],x[,2])
	mm <- min(c(x[,1],x[,2]),na.rm=T)
	MM <- max(c(x[,1],x[,2]),na.rm=T)
	plot(x,pch=20,cex=0.3, xlim=c(mm,MM), ylim=c(mm,MM), main=paste("correlation",format(cc, digits=3)), ...)
	k <- 11
    my.cols <- rev(brewer.pal(k, "RdYlBu"))
	z <- kde2d(x[,1],x[,2], n=50)
	contour(z, drawlabels=FALSE, nlevels=k, col=my.cols, add=TRUE, lw=2)
	lines(c(-9,9),c(-9,9),col="red",lty=2,lw=2)
	
    ## 3) determine barplot and height parameter 
    ## histogram (for barplot-ting the density) 
    xhist <- hist(x[,1], plot=FALSE, breaks=seq(from=mm, to=MM, length.out=lhist)) 
    yhist <- hist(x[,2], plot=FALSE, breaks=seq(from=mm, to=MM, length.out=lhist)) # note: this uses probability=TRUE 
    ## determine the plot range and all the things needed for the barplots and lines 
    xx <- seq(min(x[,1]), max(x[,1]), length.out=num.dnorm) # evaluation points for the overlaid density 
    xy <- dnorm(xx, mean=mean(x[,1]), sd=sd(x[,1])) # density points 
    yx <- seq(min(x[,2]), max(x[,2]), length.out=num.dnorm) 
    yy <- dnorm(yx, mean=mean(x[,2]), sd=sd(x[,2])) 
    ## barplot and line for x (top) 
    par(mar=c(0, pext, 0, 0)) 
    barplot(xhist$density, axes=FALSE, ylim=c(0, max(xhist$density, xy)), 
      space=0) # barplot 
    #lines(seq(from=0, to=lhist-1, length.out=num.dnorm), xy, col=dcol) # line 
	dd <- density(x[,1],from=mm,to=MM)
	lines(seq(from=0, to=lhist-1, length.out=length(dd$x)), dd$y, col=dcol) # line 
    ## barplot and line for y (right) 
    par(mar=c(pext, 0, 0, 0)) 
    barplot(yhist$density, axes=FALSE, xlim=c(0, max(yhist$density, yy)), 
      space=0, horiz=TRUE) # barplot 
    #lines(yy, seq(from=0, to=lhist-1, length.out=num.dnorm), col=dcol) # line 
	dd <- density(x[,2],from=mm,to=MM)
	lines(dd$y, seq(from=0, to=lhist-1, length.out=length(dd$x)), col=dcol) # line 
    ## restore parameters 
    par(par.) 
} 


# calculate distances
if(1==0){
	for(i in 1:400){
	   ii <- which(ss[,1]==ttX1[i,2] & ss[,2]==ttX1[i,3])
	   jj <- which(ss[,1]==ttX1[i,2] & ss[,2]==ttX1[i,4])
	   ttX1[i,7] <- sqrt(sum((as.numeric(ss[ii,4:6]-ss[jj,4:6]))**2))
	}
}

if(1==0){
	for(i in 1:400){
	   ii <- which(ss[,1]==ttX2[i,2] & ss[,2]==ttX2[i,3])
	   jj <- which(ss[,1]==ttX2[i,2] & ss[,2]==ttX2[i,4])
	   ttX2[i,7] <- sqrt(sum((as.numeric(ss[ii,4:6]-ss[jj,4:6]))**2))
	}
}