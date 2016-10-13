#' plot_wdi()
#'
#' plot WDI data returned by clean_wdi()
#' @param wdi_df data.frame: data returned by clean_wdi()
#'
#' @return list
#' @import ggplot2
#' @export
#'

plot_wdi <- function(wdi_df){

  p <- ggplot(data = wdi_df, aes(x = date, y = value, group = country)) + geom_line()

  return(p)
}
