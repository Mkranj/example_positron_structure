create_plotly_plot <- function() {
  plot_ly(data = iris, x = ~Sepal.Width, y = ~Sepal.Length, type = "scatter")
}