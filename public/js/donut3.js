var dataset = {things: [81.9, 18.1],};
var width = 300;
var height = 300;
var radius = Math.min(width, height) / 2;
var color = d3.scale.category20();
var pie = d3.layout.pie().sort(null);
var arc = d3.svg.arc()
.innerRadius(radius - 95)
.outerRadius(radius - 60);
var svg = d3.select("#donut3")
    .append("svg")
    .attr("width", width)
    .attr("height", 264)
    .append("g")
    .attr("transform", "translate("
        + width / 2.090 + ","
        + height / 2.38  + ")");
var path = svg.selectAll("path")
    .data(pie(dataset.things))
    .enter().append("path")
    .attr("fill", function(d, i) { return getColors(i); })
    .attr("d", arc);

function getColors (i) {
  var colorArray = ['#87BBA2','#FFFFFF'];
  return colorArray[i];
}

svg.append("svg:text")
    .attr("dy", ".35em")
    .attr("text-anchor", "middle")
    .attr("style","font-family: 'Dosis', sans-serif")
    .attr("font-size","40")
    .attr("fill","#FFFFFF")
    .text("18.1%");
