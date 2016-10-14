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
  
  wdi <- unique(wdi_df$indicator)

  p <- ggplot(data = wdi_df, aes_(x = ~date, y = ~value, group = ~country)) + 
    geom_line(color = 'blue', alpha = .8, size = rel(0.9), aes_(text = ~country))
  p <- p + ylab(wdi)
  p <- p + ggthemes::theme_hc()
  p <- p + scale_x_continuous(breaks = c(1960, 1970, 1980, 1990, 2000, 2010))
  p <- p + scale_y_continuous(labels = scales::comma)
  p <- p + ggtitle(paste0('Evolution of ', wdi, ' over time\nEach line represents a country\n'))
  
  plotly::ggplotly(p, tooltip = 'text')
}
