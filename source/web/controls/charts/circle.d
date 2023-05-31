module web.controls.charts.circle;

@safe: 
import web.controls;

class DUIMCircleChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMCircleChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("circle"); 
  }
}
mixin(ControlCalls!("UIMCircleChartControl", "DUIMCircleChartControl"));
mixin(ControlCalls!("UIMCircleChart", "DUIMCircleChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMCircleChart);

    auto control = UIMCircleChart;
  }
}

