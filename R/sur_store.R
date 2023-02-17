#################################################################
#SURFACE STORAGE IS CALCULATED AS THE DIFFERENCE BETWEEN 
#THE TOTAL SURFACE ZONE VOLUME AND 
#THE UNSATURATED PORTION BELOW Z (SURFACE SATURATION THICKNESS)
#BOTH ARE TRIANGULAR PRISMS
sur_store <- function(lb,a,ws,por,zs) {
  z = min(ws*a,zs)
  lb*(2*ws*zs-zs^2/a)*por
}