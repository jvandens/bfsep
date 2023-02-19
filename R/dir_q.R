#' Direct runoff
#'
#' `dir_q()` calculates direct runoff, Qd, given an impulse, I, and the saturated thickness of the surface reservoir, Zs
#'
#' @param lb BASIN LENGTH
#' @param a HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)
#' @param z WATER SURFACE ELEVATION AT SURFACE OF SURFACE ZONE (DATUM IS CHANNEL)
#' @param i IMPULSE DEPTH
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' dir_q(1,2,3,4)
dir_q <- function(lb,a,z,i){
  2*lb*z/a*i
  } #z/b IS THE SATURATED SURFACE WIDTH
