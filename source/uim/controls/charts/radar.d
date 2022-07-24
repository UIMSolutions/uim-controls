module uim.controls.charts.radar;

@safe: 
import uim.controls;

class DUIMRadarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMRadarChartControl"));
  
  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMRadarChartControl", "DUIMRadarChartControl"));
mixin(ControlCalls!("UIMRadarChart", "DUIMRadarChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRadarChart);

    auto control = UIMRadarChart;
  }
}

