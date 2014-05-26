signin('test-runner', '9h29fe3l0x')

data = {...
  struct(...
    'x', [0, 1, 2, 3, 4, 5, 6, 7, 8], ...
    'y', [0, 1, 2, 3, 4, 5, 6, 7, 8])...
};

layout = struct(...
    'title', 'Global Font', ...
    'font', struct(...
      'color', '#7f7f7f', ...
      'family', 'Courier New, monospace', ...
      'size', 18));

response = plotly(data, struct('layout', layout, 'filename', 'global-font', 'fileopt', 'overwrite'));
plot_url = response.url