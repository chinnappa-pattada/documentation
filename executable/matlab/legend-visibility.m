signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 3, 6, 4, 5, 2, 3, 5, 4]);
trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 4, 7, 8, 3, 6, 3, 3, 4]);
data = {trace0, trace1};

layout = struct('showlegend', false);

response = plotly(data, struct('layout', layout, 'filename', 'legend-visibility', 'fileopt', 'overwrite'));
plot_url = response.url