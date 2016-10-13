#' get_wdi()
#'
#' Download WDI data using the WDI API
#' @param wdi_code character: The WDI code
#' @param start numeric: Start of the period
#' @param end numeric: End of the period
#' @param remove_na logical: Remove empty records if TRUE
#' @param ... Other parameters to be passed to wbstats::wb()
#'
#' @return data.frame
#' @export
#'

get_wdi <- function(wdi_code, start = 1960, end = 2015, remove_na = FALSE, ...){

  df <- wbstats::wb(indicator = wdi_code,
                    startdate = start,
                    enddate = end,
                    removeNA = remove_na,
                    ...)

  return(df)
}
