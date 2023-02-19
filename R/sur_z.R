#' Calculate saturated thickness in surface zone
#'
#' Calculates the saturated thickness of the surface reservoir, Zs, given the volume of water stored in the surface reservoir, Ss.
#'
#' @param lb BASIN LENGTH
#' @param a HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)
#' @param ws WIDTH OF SURACE ZONE (ONE SIDE OF CHANNEL)
#' @param por DRAINABLE POROSITY
#' @param ss unknown
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' sur_z(1,2,3,4,5)
sur_z <- function(lb,a,ws,por,ss){
  a1=1/(2*a);
  b1=-2*ws;
  c1=ss/(lb*por)

  if((b1^2-4*a1*c1)<0) {
    ws*a
  } else {
    (-b1-sqrt(b1^2-4*a1*c1))/(2*a1)
  }
  }
