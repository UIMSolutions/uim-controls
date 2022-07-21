module uim.controls.charts.treemap;

@safe: 
import uim.controls;

class DUIMTreemapChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMTreemapChartControl"));
}
mixin(ControlCalls!("UIMTreemapChartControl", "DUIMTreemapChartControl"));
mixin(ControlCalls!("UIMTreemapChart", "DUIMTreemapChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTreemapChart);

    auto control = UIMTreemapChart;
  }
}

