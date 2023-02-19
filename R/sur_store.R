#' Calculate Surface Storage
#'
#' `sur_store()` calculates surface storage as the difference between the
#' total surface zone volume and the unsaturated portion below Z (surface saturation thickness),
#' both are triangular prisms.  Calculates Ss given Zs (inverse of sur_z)
#'
#' @param lb BASIN LENGTH
#' @param a HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)
#' @param ws WIDTH OF SURACE ZONE (ONE SIDE OF CHANNEL)
#' @param por DRAINABLE POROSITY
#' @param zs SATURATED THICKNESS OF SURFACE
#'
#' @return a numeric scalar
#' @export
#'
#' @examples
#' sur_store(1,2,3,4,5)
sur_store <- function(lb,a,ws,por,zs) {
  z = min(ws*a,zs)
  lb*(2*ws*zs-zs^2/a)*por
}
