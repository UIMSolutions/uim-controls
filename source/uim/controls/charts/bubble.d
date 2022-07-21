module uim.controls.charts.bubble;

@safe: 
import uim.controls;

class DUIMBubbleChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMBubbleChartControl"));
}
mixin(ControlCalls!("UIMBubbleChartControl", "DUIMBubbleChartControl"));
mixin(ControlCalls!("UIMBubbleChart", "DUIMBubbleChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMBubbleChart);

    auto control = UIMBubbleChart;
  }
}

