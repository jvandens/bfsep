#' Calculate infiltration
#'
#' `infiltration()` calculates infiltration based on unsaturated surface area
#'
#' @param lb BASIN LENGTH
#' @param ws WIDTH OF SURACE ZONE (ONE SIDE OF CHANNEL)
#' @param ks HYDRAULIC CONDUCTIVITY OF SURFACE
#' @param a HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)
#' @param zs SATURATED THICKNESS OF SURFACE
#' @param i IMPULSE DEPTH
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' infiltration(1,2,3,4,5,6)
infiltration <- function(lb,ws,ks,a,zs,i) {
  (2*lb*(ws-zs/a)*min(i,ks))
  }
