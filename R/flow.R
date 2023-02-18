#' Get flow parameters for a USGS gage
#'
#' @param siteNumber USGS gage ID
#'
#' @return a vector of flow parameters
#' @export
#'
#' @examples
#' flow("12189500")
flow <- function(siteNumber) {

  # site params
  s <- match(siteNumber, bf_params_usgs$site_no)

  # model args
  flow <- unlist(c(bf_params_usgs[s,12],
                   bf_params_usgs[s,13],
                   bf_params_usgs[s,14],
                   bf_params_usgs[s,15],
                   bf_params_usgs[s,16],
                   bf_params_usgs[s,17]))

  return(flow)
}
