signin('test-runner', '9h29fe3l0x')

trace1 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [1, 4, 9, 16], ...
  'name', '$\alpha_{1c} = 352 \pm 11 \text{ km s}^{-1}$');
trace2 = struct(...
  'x', [1, 2, 3, 4], ...
  'y', [0.5, 2, 4.5, 8], ...
  'name', '$\beta_{1c} = 25 \pm 11 \text{ km s}^{-1}$');
data = {trace0, trace1};

layout = struct(...
    'xaxis', struct('title', '$\sqrt{(n_\text{c}(t|{T_\text{early}}))}$'), ...
    'yaxis', struct('title', '$d, r \text{ (solar radius)}$'));

response = plotly(data, struct('layout', layout, 'filename', 'latex', 'fileopt', 'overwrite'));
plot_url = response.url