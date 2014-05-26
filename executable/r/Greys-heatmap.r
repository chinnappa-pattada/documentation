library(plotly)
p <- plotly(username='test-runner', key='9h29fe3l0x')

trace1 <- list(
  scl = "Greys", 
  z = list(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0),list(0.0, 0.004, 0.006, 0.008, 0.009, 0.01, 0.011, 0.012, 0.013, 0.013, 0.014, 0.015, 0.015, 0.016, 0.017),list(0.0, 0.006, 0.009, 0.011, 0.013, 0.014, 0.015, 0.017, 0.018, 0.019, 0.02, 0.021, 0.022, 0.023, 0.024),list(0.0, 0.008, 0.011, 0.013, 0.015, 0.017, 0.019, 0.02, 0.022, 0.023, 0.024, 0.026, 0.027, 0.028, 0.029),list(0.0, 0.009, 0.013, 0.015, 0.018, 0.02, 0.022, 0.024, 0.025, 0.027, 0.028, 0.029, 0.031, 0.032, 0.033),list(0.0, 0.01, 0.014, 0.017, 0.02, 0.022, 0.024, 0.026, 0.028, 0.03, 0.031, 0.033, 0.034, 0.036, 0.037),list(0.0, 0.011, 0.015, 0.019, 0.022, 0.024, 0.027, 0.029, 0.031, 0.033, 0.034, 0.036, 0.038, 0.039, 0.041),list(0.0, 0.012, 0.017, 0.02, 0.024, 0.026, 0.029, 0.031, 0.033, 0.035, 0.037, 0.039, 0.041, 0.042, 0.044),list(0.0, 0.013, 0.018, 0.022, 0.025, 0.028, 0.031, 0.033, 0.036, 0.038, 0.04, 0.042, 0.044, 0.045, 0.047),list(0.0, 0.013, 0.019, 0.023, 0.027, 0.03, 0.033, 0.035, 0.038, 0.04, 0.042, 0.044, 0.046, 0.048, 0.05),list(0.0, 0.014, 0.02, 0.024, 0.028, 0.031, 0.034, 0.037, 0.04, 0.042, 0.044, 0.047, 0.049, 0.051, 0.053),list(0.0, 0.015, 0.021, 0.026, 0.029, 0.033, 0.036, 0.039, 0.042, 0.044, 0.047, 0.049, 0.051, 0.053, 0.055),list(0.0, 0.015, 0.022, 0.027, 0.031, 0.034, 0.038, 0.041, 0.044, 0.046, 0.049, 0.051, 0.053, 0.056, 0.058),list(0.0, 0.016, 0.023, 0.028, 0.032, 0.036, 0.039, 0.042, 0.045, 0.048, 0.051, 0.053, 0.056, 0.058, 0.06),list(0.0, 0.017, 0.024, 0.029, 0.033, 0.037, 0.041, 0.044, 0.047, 0.05, 0.053, 0.055, 0.058, 0.06, 0.062)), 
  type = "heatmap"
)

layout <- list(title = "Greys")

response <- p$plotly(trace0, kwargs=list(layout=layout, filename="Greys-heatmap", fileopt="overwrite"))
url <- response$url
filename <- response$filename