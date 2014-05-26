import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 3, 6, 4, 5, 2, 3, 5, 4]
)
trace2 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 4, 7, 8, 3, 6, 3, 3, 4]
)
data = Data([trace1, trace2])

layout = Layout(
    legend=Legend(
        x=1,
        y=1
    ),
    showlegend=True
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='legend-inside')