module uim.controls.charts.pie;

@safe: 
import uim.controls;

class DUIMPieChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMPieChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("pie"); 
  }
}
mixin(ControlCalls!("UIMPieChartControl", "DUIMPieChartControl"));
mixin(ControlCalls!("UIMPieChart", "DUIMPieChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPieChart);

    auto control = UIMPieChart;
  }
}

