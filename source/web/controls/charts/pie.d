module web.controls.charts.pie;

@safe: 
import web.controls;

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

version(test_uim_controls) { unittest {
    assert(UIMPieChart);

    auto control = UIMPieChart;
  }
}

