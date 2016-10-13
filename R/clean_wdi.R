#' clean_wdi()
#'
#' Clean WDI data returned by get_wdi()
#' @param wdi_df data.frame: data returned by get_wdi()
#'
#' @return data.frame
#' @export
#'

clean_wdi <- function(wdi_df){

  df <- wdi_df[wdi_df$iso2c %in% countries$iso2c, ]
  df$date <- as.numeric(df$date)

  return(df)
}
