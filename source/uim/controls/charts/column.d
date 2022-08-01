module uim.controls.charts.column;

@safe: 
import uim.controls;

class DUIMColumnChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMColumnChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("column"); 
  }
}
mixin(ControlCalls!("UIMColumnChartControl", "DUIMColumnChartControl"));
mixin(ControlCalls!("UIMColumnChart", "DUIMColumnChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMColumnChart);

    auto control = UIMColumnChart;
  }
}

