#'@title Cregg's theme function
#'
#'@description  This function brings together particular elements
#' I like for plotting along with customized background
#' coloring for presentations
#' @inheritParams ggplot2::theme_grey
#' @title
#' @export
#' @keywords cregg
#' @family themes cregg



theme_cregg = function(base_size = 12, base_family = "serif"){
  dodger  = "#1E90FF"
  ivory = "#FFFFF0"

  library(devtools)
  library(roxygen2)
  library(ggthemes)
  library(hrbrthemes)
  library(ggplot2)
  library(ggthemes)

  theme_foundation(base_size = base_size,
                   base_family = base_family) +
    theme(rect = element_rect(color = "black", fill = ivory),
          line = element_line(color = dodger),
          text = element_text(color = "black"),
          #title is centered, 20 point, bold, dodger blue
          plot.title = element_text(face = "bold",
                                    size = rel(1.8),
                                    hjust = 0.5,
                                    color = dodger),
          #Something about subtitles
          plot.subtitle = element_text(hjust = 0.5,
                                       size = rel(1),
                                       face = "plain",
                                       color = dodger),
          plot.caption = element_text(hjust = 0.5,
                                      size = rel(1),
                                      face = "plain",
                                      color = dodger),
          panel.background = element_blank(),
          panel.border = element_blank(),
          strip.text = element_text(hjust = 0.5,
                                    size = rel(1),
                                    color = dodger,
                                    face = "plain"),
          strip.background = element_blank(),
          #keepin axis titles consistent, bro
          axis.title = element_text(face = "plain",
                                    color = dodger,
                                    size = rel(1.4)),
          #keepin axis text consistent, bro
          axis.text = element_text(face = "plain",
                                   color = "black",
                                   size = rel(1)),
          #Both axis lines
          axis.line = element_line(color = "black"),
          #No axis ticks, broseph
          axis.ticks = element_line(color = "black"),
          #No gridlines, (maybe revisit this)
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          #legend has no border
          legend.background = element_rect(color = NA),
          #standard, consistent label
          legend.text = element_text(size = rel(1),
                                     color = "black"),
          # no legend title - use same as legend text
          legend.title = element_text(size = rel(1),
                                      colour = "black", face = "plain"),
          legend.key = element_rect(colour = NA),
          legend.position = "right",
          legend.direction = "vertical")
}

