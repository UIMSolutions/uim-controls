module web.controls.charts.bubble;

@safe: 
import web.controls;

class DUIMBubbleChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMBubbleChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("bubble"); 
  }
}
mixin(ControlCalls!("UIMBubbleChartControl", "DUIMBubbleChartControl"));
mixin(ControlCalls!("UIMBubbleChart", "DUIMBubbleChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMBubbleChart);

    auto control = UIMBubbleChart;
  }
}

