module uim.controls.charts.area;

@safe: 
import uim.controls;

class DUIMAreaChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMAreaChartControl"));
}
mixin(ControlCalls!("UIMPieChartControl", "DUIMAreaChartControl"));
mixin(ControlCalls!("UIMAreaChart", "DUIMAreaChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMAreaChart);

    auto control = UIMAreaChart;
  }
}

