module web.controls.charts.column;

@safe: 
import web.controls;

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

version(test_uim_controls) { unittest {
    assert(UIMColumnChart);

    auto control = UIMColumnChart;
  }
}

