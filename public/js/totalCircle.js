(function(d3) {
	"use strict";

	d3.json("/mood/total", function(err, data) {
    if (err) {
      console.log(err);
      return;
    }
    makeTotalCircle(data);
  });

})(d3);


makeTotalCircle = function(data) {

	var margin = {top: 0, right: 100, bottom: 50,  }
	var outerWidth = window.innerWidth - ,
		outerHeight,
	var rMin;
	var rMax;
	var xCol;
	
	var svg = d3.select("body").append("div")
		.classed("svg-container", true)
		.append("svg")
		.attr("preserveAspectRatio", "xMinYMin meet")
		.attr("viewBox", " 0 0 ")

}