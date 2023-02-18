#' Get groundwater hydrology for a USGS gage
#'
#' @param siteNumber USGS gage ID
#'
#' @return a vector of groundwater hydrology
#' @export
#'
#' @examples
#' gw_hyd("12189500")
gw_hyd <- function(siteNumber) {

  # site params
  s <- match(siteNumber, bf_params_usgs$site_no)

  # model args
  gw_hyd <- unlist(c(bf_params_usgs[s,7],
               bf_params_usgs[s,8],
               bf_params_usgs[s,9],
               bf_params_usgs[s,10],
               bf_params_usgs[s,11]))

  return(gw_hyd)
}

