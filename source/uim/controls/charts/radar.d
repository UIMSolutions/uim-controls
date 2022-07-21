module uim.controls.charts.radar;

@safe: 
import uim.controls;

class DUIMRadarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMRadarChartControl"));
}
mixin(ControlCalls!("UIMRadarChartControl", "DUIMRadarChartControl"));
mixin(ControlCalls!("UIMRadarChart", "DUIMRadarChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRadarChart);

    auto control = UIMRadarChart;
  }
}

