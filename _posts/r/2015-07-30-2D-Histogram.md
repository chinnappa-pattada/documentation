---
title: 2D Histograms in R | Examples | Plotly
name: 2D Histograms
permalink: r/2D-Histogram/
description: How to make a 2D histogram in R. A 2D histogram is a visualization of a bivariate distribution.
layout: base
thumbnail: thumbnail/histogram2d.jpg
language: r
page_type: example_index
has_thumbnail: true
display_as: chart_type
order: 5
---



### New to Plotly?
Plotly's R library is free and open source! [Get started](https://plot.ly/r/getting-started/) by downloading the client and reading [the primer](https://plot.ly/r/getting-started/).
You can set up Plotly to work [offline](https://plot.ly/r/getting-started/#installation), or host graphs [online](https://plot.ly/r/getting-started/#hosting-graphs-in-your-online-plotly-account).
We also have a quick-reference [cheatsheet (new!)](https://images.plot.ly/plotly-documentation/images/r_cheat_sheet.pdf) to help you get started!


### Basic 2D Histogram


```r
library(plotly)
s <- matrix(c(1, -.75, -.75, 1), ncol = 2)
obs <- mvtnorm::rmvnorm(500, sigma = s)
```

```
## Error in loadNamespace(name): there is no package called 'mvtnorm'
```

```r
plot_ly(x = obs[,1], y = obs[,2], type = "histogram2d")
```

```
## Error in eval(expr, envir, enclos): objet 'obs' introuvable
```