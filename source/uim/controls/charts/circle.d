module uim.controls.charts.circle;

@safe: 
import uim.controls;

class DUIMCircleChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMCircleChartControl"));
}
mixin(ControlCalls!("UIMCircleChartControl", "DUIMCircleChartControl"));
mixin(ControlCalls!("UIMCircleChart", "DUIMCircleChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCircleChart);

    auto control = UIMCircleChart;
  }
}

