#' Discharge for surface zone
#'
#' `sur_q()` calculates discharge from the surface reservoir, Qs, given Zs
#'
#' @param lb BASIN LENGTH
#' @param a HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)
#' @param ks HYDRAULIC CONDUCTIVITY OF SURFACE
#' @param z WATER SURFACE ELEVATION AT SURFACE OF SURFACE ZONE (DATUM IS CHANNEL)
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' sur_q(1,2,3,4)
sur_q <- function(lb,a,ks,z) {
  2*lb*z*a*ks
  }
