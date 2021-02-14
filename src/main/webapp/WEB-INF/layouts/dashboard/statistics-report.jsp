<center>
<div id="piechart" class="h2"></div>
</center>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Week per Day'],
  ['Refund', 0],
  ['E-Payment',0],
  ['Product_Return', 0],
  ['Card-Payment', 1],
  ['Cash-payment', 1]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Per Month Average', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>