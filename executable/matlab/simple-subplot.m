signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [4, 5, 6]);
trace2 = struct(...
  'x', [20, 30, 40], ...
  'y', [50, 60, 70], ...
  'xaxis', 'x2', ...
  'yaxis', 'y2');
data = {trace0, trace1};

layout = struct(...
    'xaxis', struct('domain', [0, 0.45]), ...
    'xaxis2', struct('domain', [0.55, 1]), ...
    'yaxis2', struct('anchor', 'x2'));

response = plotly(data, struct('layout', layout, 'filename', 'simple-subplot', 'fileopt', 'overwrite'));
plot_url = response.url