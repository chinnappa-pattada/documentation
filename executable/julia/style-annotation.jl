using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 1, 3, 2, 4, 3, 4, 6, 5]
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 4, 5, 1, 2, 2, 3, 4, 2]
  ]
]

layout = [
  "showlegend" => false, 
  "annotations" => [
    [
      "text" => "max=5", 
      "xref" => "x", 
      "yref" => "y", 
      "x" => 2, 
      "y" => 5, 
      "ax" => 20, 
      "ay" => -30, 
      "arrowhead" => 2, 
      "arrowsize" => 1, 
      "arrowwidth" => 2, 
      "arrowcolor" => "#636363", 
      "bgcolor" => "#ff7f0e", 
      "bordercolor" => "#c7c7c7", 
      "borderpad" => 4, 
      "borderwidth" => 2, 
      "font" => [
        "color" => "#ffffff", 
        "family" => "Courier New, monospace", 
        "size" => 16
      ], 
      "opacity" => 0.8, 
      "showarrow" => true, 
      "align" => "center"
    ]
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "style-annotation", "fileopt" => "overwrite"])
plot_url = response["url"]