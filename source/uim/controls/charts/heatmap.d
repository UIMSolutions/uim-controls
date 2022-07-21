module uim.controls.charts.heatmap;

@safe: 
import uim.controls;

class DUIMHeatmapChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMHeatmapChartControl"));
}
mixin(ControlCalls!("UIMHeatmapChartControl", "DUIMHeatmapChartControl"));
mixin(ControlCalls!("UIMHeatmapChart", "DUIMHeatmapChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMHeatmapChart);

    auto control = UIMHeatmapChart;
  }
}

