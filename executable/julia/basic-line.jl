using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [1, 2, 3, 4], 
    "y" => [10, 15, 13, 17]
  ], 
  [
    "x" => [1, 2, 3, 4], 
    "y" => [16, 5, 11, 9]
  ]
]

response = Plotly.plot([data], ["filename" => "basic-line", "fileopt" => "overwrite"])
plot_url = response["url"]