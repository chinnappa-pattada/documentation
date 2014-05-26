import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

import numpy as np

t = np.linspace(-1,1.2,2000)
x = (t**3)+(0.3*np.random.randn(2000))
y = (t**6)+(0.3*np.random.randn(2000))

trace1 = Scatter(
    x=x,
    y=y,
    name='points',
    mode='markers',
    marker=Marker(
        size=2,
        color='rgb(102,0,0)',
        opacity=0.4
    )
)
trace2 = Histogram2dContour(
    x=x,
    y=y,
    scl='Hot',
    reversescl=True,
    name='density',
    ncontours=20,
    showscale=False
)
trace3 = Histogram(
    x=x,
    name='x density',
    marker=Marker(
        color='rgb(102,0,0)'
    ),
    yaxis='y2'
)
trace4 = Histogram(
    y=y,
    name='y density',
    marker=Marker(
        color='rgb(102,0,0)'
    ),
    xaxis='x2'
)
data = Data([trace1, trace2, trace3, trace4])

layout = Layout(
    xaxis=XAxis(
        domain=[0, 0.85],
        showgrid=False,
        zeroline=False
    ),
    yaxis=YAxis(
        domain=[0, 0.85],
        showgrid=False,
        zeroline=False
    ),
    width=600,
    height=550,
    autosize=False,
    margin=Margin(
        t=50
    ),
    hovermode='closest',
    bargap=0,
    showlegend=False,
    xaxis2=XAxis(
        domain=[0.85, 1],
        showgrid=False,
        zeroline=False
    ),
    yaxis2=YAxis(
        domain=[0.85, 1],
        showgrid=False,
        zeroline=False
    )
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='contour-subplots')