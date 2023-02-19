#' USGS gage parameters data
#'
#' A set of calibration parameter values for 13,208 streamflow gages operated by USGS
#'
#' @format ## `bf_params_usgs`
#' A data frame with 13,208 rows and 18 columns:
#' \describe{
#'   \item{site_no}{USGS Gage ID}
#'   \item{Area}{Area of the stream basin in <units>}
#'   \item{Lb}{Length of stream basin and channel, width of base reservoir}
#'   \item{X1}{Scaling parameter for base water surface function}
#'   \item{Wb}{Base reservoir width}
#'   \item{POR}{Drainable porosity}
#'   \item{ALPHA}{Lateral hydraulic gradient of surface reservoir}
#'   \item{BETA}{Exponent for base water surface function}
#'   \item{Ks}{Hydraulic conductivity of surface reservoir}
#'   \item{Kb}{Horizontal hydraulic conductivity of base reservoir}
#'   \item{Kz}{Vertical hydraulic conductivity of base reservoir}
#'   \item{Qthresh}{Threshold (minimum) streamflow that is greater than measurement precision and above which the absolute value of first-order recession rates, |?Q/Q| , increase with streamflow}
#'   \item{Lb}{not defined}
#'   \item{Rs}{First-order coefficient for surface flow recession. Rs has a negative value. The 95th percentile of 2-day recession rates (a relatively slow rate) is used for initial calibration.}
#'   \item{Rb1}{First-order coefficient for rapid base flow recession. Rb1 has a negative value. The 50th percentile of 10-day recession rates, typical rate) is use for initial calibration.}
#'   \item{Rb2}{First-order coefficient for rapid base flow recession. Rb2 has a negative value. The 95th percent of 10-day recession rates (a relatively slow rate) is use for initial calibration.}
#'   \item{Prec}{Precision of low flow values based on the difference between the 0.01 quantile of streamflow and the next l}
#'   \item{Frac4Rise}{not defined}
#'   \item{Error}{not defined}
#' }
#' @source <https://www.sciencebase.gov/catalog/item/5f90ef0282ce720ee2d29b7e>
"bf_params_usgs"
