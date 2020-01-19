\name{theme_cregg}
\alias{theme_cregg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Theme function for Cregg
}
\description{
This function brings together particular elements
I like for plotting along with customized background
coloring for presentations
}
\usage{
theme_cregg(base_size = 12, base_family = "serif")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{base_size}{
%%     ~~Describe \code{base_size} here~~
}
  \item{base_family}{
%%     ~~Describe \code{base_family} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
ggplot2::ggplot(data = mtcars, ggplot2::aes(x = wt, y = mpg)) + ggplot2::geom_point() + theme_cregg()

## The function is currently defined as
function (base_size = 12, base_family = "serif")
{
    dodger = "#1E90FF"
    ivory = "#FFFFF0"
    theme_foundation(base_size = base_size, base_family = base_family) +
        theme(rect = element_rect(color = black, fill = ivory),
            line = element_line(color = dodger), text = element_text(color = dodger),
            plot.title = element_text(face = "bold", size = rel(1.8),
                hjust = 0.5, color = dodger), plot.subtitle = element_text(hjust = 0.5,
                size = rel(1), face = "plain", color = dodger),
            plot.caption = element_text(hjust = 0.5, size = rel(1),
                face = "plain", color = dodger), panel.background = element_blank(),
            panel.border = element_blank(), strip.text = element_text(hjust = 0.5,
                size = rel(1), color = dodger, face = "plain"),
            strip.background = element_blank(), axis.title = element_text(face = "plain",
                color = dodger, size = rel(1)), axis.text = element_text(face = "plain",
                color = dodger, size = rel(1)), axis.line = element_line(color = "black"),
            axis.ticks = element_blank(), panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(), legend.background = element_rect(color = NA),
            legend.text = element_text(size = rel(1), color = "black"),
            legend.title = element_text(size = rel(1), colour = "black",
                face = "plain"), legend.key = element_rect(colour = NA),
            legend.position = "right", legend.direction = "vertical")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ cregg}% use one of  RShowDoc("KEYWORDS")
\keyword{ creggburt}% __ONLY ONE__ keyword per line
