signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [8, 7, 6, 5, 4, 3, 2, 1, 0]);
trace2 = struct(...
  'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
  'y', [0, 1, 2, 3, 4, 5, 6, 7, 8]);
data = {trace0, trace1};

layout = struct(...
    'xaxis', struct(...
      'autorange', true, ...
      'type', 'log'), ...
    'yaxis', struct(...
      'autorange', true, ...
      'type', 'log'));

response = plotly(data, struct('layout', layout, 'filename', 'axes-range-type', 'fileopt', 'overwrite'));
plot_url = response.url