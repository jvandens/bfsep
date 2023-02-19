#' Return base table of values
#'
#' `base_table()` returns a lookup table for base with saturated height,
#' intersection, hydraulic gradient, storage and discharge
#' Creates a table with Zb, hydraulic gradient (dZb/dx), Sb, and Qb for 1202 values of Xb from 0 to Lb

#' @param lb BASIN LENGTH
#' @param x1 LONGITUDINAL SCALING PARAMETER
#' @param wb WIDTH OF BASE ZONE
#' @param b EXPONENT FOR SATURATED HEIGHT AS A FUNCTION OF LENGTH:Z=[(xb-X0)/x1]^BETA
#' @param kb HORIZONAL HYDRAULIC CONDUCTIVITY OF BASE
#' @param qthresh qthresh
#' @param qmean qmean
#' @param por DRAINABLE POROSITY
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' base_table(1,2,3,4,5,6,7,8)
base_table <- function(lb,x1,wb,b,kb,qthresh,qmean,por) {
  tmp.x=seq(0,lb,lb/1201)
  tmp.z=z=(tmp.x/x1)^b
  tmp.dzdx=b/(x1^b)*(tmp.x^(b-1))
  tmp.q=wb*kb*tmp.z*tmp.dzdx
  tmp.range=tmp.x[c(match(TRUE,tmp.q>qthresh/2),match(TRUE,tmp.q>2*qmean))]

  if(any(tmp.range[1]==tmp.range[2],is.na(tmp.range),tmp.range==lb)){
    xb=tmp.x
  } else {
    xb=c(tmp.range[1]*(1-10^seq(0,-3,-0.03)),tmp.range[1]+(tmp.range[2]-tmp.range[1])*seq(0.001,1,0.001),tmp.range[2]+(lb-tmp.range[2])*(10^seq(-3,0,0.03)))
  }

  z=(xb/x1)^b
  dzdx=b/(x1^b)*(xb^(b-1))
  dzdx[dzdx==Inf]=0
  ds=wb*c(xb[1],xb[2:1202]-xb[1:1201])*c(z[1],(z[2:1202]+z[1:1201])/2*por)
  q=wb*kb*dzdx*z
  q[is.na(q)]=0
  BT=data.frame(xb,z,dzdx,cumsum(ds)+(lb-xb)*z*wb*por,q)
  dimnames(BT)[[2]]=c('Xb','Z','dzdx','S','Q')

  return(BT)
  }
