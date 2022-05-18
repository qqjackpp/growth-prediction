<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
<%!int[] arr1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
	double[] arr2 = {1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.10, 11.11, 12.12};
	int[] arr3 = {3, 1, 4, 1, 5, 9, 6, 5, 3, 5, 1, 2};%>
	google.charts.load('current', {
		'packages' : [ 'line', 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var chartDiv = document.getElementById('chart_div');

		var data = new google.visualization.DataTable();
		data.addColumn('number', 'Month');
		data.addColumn('number', "Average Temperature");
		data.addColumn('number', "Average Hours of Daylight");

		data.addRows([
			<%for (int i = 0; i < arr1.length; i++) {%>
			[<%=arr1[i]%>	,<%=arr2[i]%>	,<%=arr3[i]%>	],
			<%}%>
		]);

		var materialOptions = {
			chart : {
				title : 'Average Temperatures and Daylight in Iceland Throughout the Year'
			},
			width : 1000,
			height : 400,
			vAxis: { title: "Average Rating" },
			hAxis : {title: "moooooooonth"},
			chartArea: {  width: "50%", height: "30%" }
			
		/* series : {
			// Gives each series an axis name that matches the Y-axis below.
			0 : {
				axis : 'Temps'
			},
			1 : {
				axis : 'Daylight'
			} 
		},
		axes : {
			// Adds labels to each axis; they don't have to match the axis names.
			y : {
				Temps : {
					label : 'Temps (Celsius)'
				},
				Daylight : {
					label : 'Daylight'
				}
			}
		} */
		};

		var materialChart = new google.charts.Line(chartDiv);
		materialChart.draw(data, google.charts.Line.convertOptions(materialOptions));

	}
</script>
<style>
!important .hidden {
  display: none;
  visibility: hidden;
}

chartArea: { width: '100%', left:100 },
</style>
</head>
<body>

	<div id="chart_div"></div>

</body>
</html>
