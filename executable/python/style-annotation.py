import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('test-runner', '9h29fe3l0x')

trace1 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 1, 3, 2, 4, 3, 4, 6, 5]
)
trace2 = Scatter(
    x=[0, 1, 2, 3, 4, 5, 6, 7, 8],
    y=[0, 4, 5, 1, 2, 2, 3, 4, 2]
)
data = Data([trace1, trace2])

layout = Layout(
    showlegend=False,
    annotations=Annotations([
        Annotation(
            x=2,
            y=5,
            text='max=5',
            bordercolor='#c7c7c7',
            borderwidth=2,
            borderpad=4,
            bgcolor='#ff7f0e',
            xref='x',
            yref='y',
            showarrow=True,
            arrowwidth=2,
            arrowcolor='#636363',
            arrowhead=2,
            arrowsize=1,
            font=Font(
                family='Courier New, monospace',
                size=16,
                color='#ffffff'
            ),
            opacity=0.8,
            align='center',
            ay=-30,
            ax=20
        )
    ])
)

fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='style-annotation')