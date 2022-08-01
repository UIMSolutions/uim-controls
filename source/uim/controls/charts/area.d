module uim.controls.charts.area;

@safe: 
import uim.controls;

class DUIMAreaChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMAreaChartControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .type("area"); 
  }
}
mixin(ControlCalls!("UIMAreaChartControl", "DUIMAreaChartControl"));
mixin(ControlCalls!("UIMAreaChart", "DUIMAreaChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMAreaChart);

    auto control = UIMAreaChart;
  }
}

