module uim.controls.charts.chart;

@safe: 
import uim.controls;

class DUIMChartControl : DUIMControl {
  mixin(ControlThis!("UIMChartControl"));

  mixin(OProperty!("string", "chartContent"));

  mixin(OProperty!("string", "foreColor")); // Sets the text color for the chart. 
  
  /* Specify the chart type. Available Options:
  * line, area, bar, radar, histogram, pie, donut, radialBar, scatter, bubble, heatmap, candlestick */
  mixin(OProperty!("string", "type")); 
  mixin(OProperty!("string", "chartOptions")); 
  mixin(OProperty!("DUIMChartLegendElement", "legend"));
  
  override void initialize() {
    super.initialize;

    this
      .id("chart-%s".format(uniform(0, 1000000)))
      .classes(["chart-lg"])
      .legend(new DUIMChartLegendElement);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes)~
      H5Script(`document.addEventListener("DOMContentLoaded", function () {
  window.ApexCharts && (new ApexCharts(
    document.getElementById('`~myId~`'), `~chartOptions~`)).render();
});`); 

  }
}
mixin(ControlCalls!("UIMChartControl", "DUIMChartControl"));
mixin(ControlCalls!("UIMChart", "DUIMChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMChart);

    auto control = UIMChart;
  }
}