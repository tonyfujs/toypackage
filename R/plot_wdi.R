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
  
wdi_df$value = wdi_df$value/1000000
  
p <- ggplot(data = wdi_df, aes(x = date, y = value, group = country)) + geom_line(aes(colour = value))
  
p <- p + scale_x_continuous(breaks = seq(1960, 2015, 5))
  
p <- p + scale_y_continuous(breaks = seq(0, 1500, 300))
  
p <- p + labs(title = wdi_df$indicatorID[1])
  
p <- p + ylab("value (in millions)") + xlab("Year")
  
return(p)
  
}
