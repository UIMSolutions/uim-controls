module uim.controls.charts.bar;

@safe: 
import uim.controls;

class DUIMBarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMBarChartControl"));
  
  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMPieChartControl", "DUIMBarChartControl"));
mixin(ControlCalls!("UIMBarChart", "DUIMBarChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMBarChart);

    auto control = UIMBarChart;
  }
}

