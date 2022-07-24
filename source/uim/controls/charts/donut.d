module uim.controls.charts.donut;

@safe: 
import uim.controls;

class DUIMDonutChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMDonutChartControl"));
  
  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMDonutChartControl", "DUIMDonutChartControl"));
mixin(ControlCalls!("UIMDonutChart", "DUIMDonutChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDonutChart);

    auto control = UIMDonutChart;
  }
}

