#' Get basin characteristics for a USGS gage
#'
#' @param siteNumber character USGS gage ID
#'
#' @return vector with basin characteristics
#' @export
#'
#' @examples
#' basin_char("12189500")
basin_char <- function(siteNumber) {

  # site params
  s <- match(siteNumber, bf_params_usgs$site_no)

  # model args
  basin_char <- unlist(c(bf_params_usgs[s,2],
                         bf_params_usgs[s,3],
                         bf_params_usgs[s,4],
                         bf_params_usgs[s,5],
                         bf_params_usgs[s,6]))

  return(basin_char)

}
