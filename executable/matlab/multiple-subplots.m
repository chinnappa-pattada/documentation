signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [4, 5, 6]);
trace2 = struct(...
  'x', [20, 30, 40], ...
  'y', [50, 60, 70], ...
  'xaxis', 'x2', ...
  'yaxis', 'y2');
trace3 = struct(...
  'x', [300, 400, 500], ...
  'y', [600, 700, 800], ...
  'xaxis', 'x3', ...
  'yaxis', 'y3');
trace4 = struct(...
  'x', [4000, 5000, 6000], ...
  'y', [7000, 8000, 9000], ...
  'xaxis', 'x4', ...
  'yaxis', 'y4');
data = {trace0, trace1, trace2, trace3};

layout = struct(...
    'xaxis', struct('domain', [0, 0.45]), ...
    'yaxis', struct('domain', [0, 0.45]), ...
    'xaxis2', struct('domain', [0.55, 1]), ...
    'yaxis2', struct(...
      'domain', [0, 0.45], ...
      'anchor', 'x2'), ...
    'xaxis3', struct(...
      'domain', [0, 0.45], ...
      'anchor', 'y3'), ...
    'yaxis3', struct('domain', [0.55, 1]), ...
    'xaxis4', struct(...
      'domain', [0.55, 1], ...
      'anchor', 'y4'), ...
    'yaxis4', struct(...
      'domain', [0.55, 1], ...
      'anchor', 'x4'));

response = plotly(data, struct('layout', layout, 'filename', 'multiple-subplots', 'fileopt', 'overwrite'));
plot_url = response.url