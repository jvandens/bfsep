#' Calculate recharge
#'
#' `recharge()` calculates the portion of water stored in the surface reservoir that recharges the base reservoir, R
#'
#' @param lb BASIN LENGTH
#' @param xb LONGITUDINAL LOCATION OF BASE WATER LEVEL INTERSECTION WITH SURFACE
#' @param ws WIDTH OF SURACE ZONE (ONE SIDE OF CHANNEL)
#' @param kz VERTICAL HYDRAULIC CONDUCTIVITY
#' @param zs SATURATED THICKNESS OF SURFACE
#' @param por DRAINABLE POROSITY
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' recharge(1,2,3,4,5,6)
recharge <- function(lb,xb,ws,kz,zs,por) {
  (lb-xb)*2*ws*min(zs*por,kz)
  }
