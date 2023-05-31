module web.controls.charts.heatmap;

@safe: 
import web.controls;

class DUIMHeatmapChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMHeatmapChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("heatmap"); 
  }
}
mixin(ControlCalls!("UIMHeatmapChartControl", "DUIMHeatmapChartControl"));
mixin(ControlCalls!("UIMHeatmapChart", "DUIMHeatmapChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMHeatmapChart);

    auto control = UIMHeatmapChart;
  }
}

