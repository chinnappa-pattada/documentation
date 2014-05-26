using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [1, 2, 3], 
    "y" => [4, 5, 6], 
    "name" => "yaxis1 data"
  ], 
  [
    "x" => [2, 3, 4], 
    "y" => [40, 50, 60], 
    "name" => "yaxis2 data", 
    "yaxis" => "y2"
  ], 
  [
    "x" => [3, 4, 5], 
    "y" => [400, 500, 600], 
    "name" => "yaxis3 data", 
    "yaxis" => "y3"
  ], 
  [
    "x" => [4, 5, 6], 
    "y" => [40000, 50000, 60000], 
    "name" => "yaxis4 data", 
    "yaxis" => "y4"
  ], 
  [
    "x" => [5, 6, 7], 
    "y" => [400000, 500000, 600000], 
    "name" => "yaxis5 data", 
    "yaxis" => "y5"
  ], 
  [
    "x" => [6, 7, 8], 
    "y" => [4000000, 5000000, 6000000], 
    "name" => "yaxis6 data", 
    "yaxis" => "y6"
  ]
]

layout = [
  "width" => 800, 
  "xaxis" => ["domain" => [0.3, 0.7]], 
  "yaxis" => [
    "title" => "yaxis title", 
    "titlefont" => ["color" => "#1f77b4"], 
    "tickfont" => ["color" => "#1f77b4"]
  ], 
  "yaxis2" => [
    "overlaying" => "y", 
    "side" => "left", 
    "anchor" => "free", 
    "position" => 0.15, 
    "title" => "yaxis2 title", 
    "titlefont" => ["color" => "#ff7f0e"], 
    "tickfont" => ["color" => "#ff7f0e"]
  ], 
  "yaxis3" => [
    "overlaying" => "y", 
    "side" => "left", 
    "anchor" => "free", 
    "position" => 0, 
    "title" => "yaxis3 title", 
    "titlefont" => ["color" => "#2ca02c"], 
    "tickfont" => ["color" => "#2ca02c"]
  ], 
  "yaxis4" => [
    "overlaying" => "y", 
    "side" => "right", 
    "anchor" => "x", 
    "title" => "yaxis4 title", 
    "titlefont" => ["color" => "#d62728"], 
    "tickfont" => ["color" => "#d62728"]
  ], 
  "yaxis5" => [
    "overlaying" => "y", 
    "side" => "right", 
    "anchor" => "free", 
    "position" => 0.85, 
    "title" => "yaxis5 title", 
    "titlefont" => ["color" => "#9467bd"], 
    "tickfont" => ["color" => "#9467bd"]
  ], 
  "yaxis6" => [
    "overlaying" => "y", 
    "side" => "right", 
    "anchor" => "free", 
    "position" => 1.0, 
    "title" => "yaxis6 title", 
    "titlefont" => ["color" => "#8c564b"], 
    "tickfont" => ["color" => "#8c564b"]
  ], 
  "title" => "multiple y-axes example"
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "multiple-axes-multiple", "fileopt" => "overwrite"])
plot_url = response["url"]