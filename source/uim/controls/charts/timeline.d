module uim.controls.charts.timeline;

@safe: 
import uim.controls;

class DUIMTimelineChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMTimelineChartControl"));
  
  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMTimelineChartControl", "DUIMTimelineChartControl"));
mixin(ControlCalls!("UIMTimelineChart", "DUIMTimelineChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTimelineChart);

    auto control = UIMTimelineChart;
  }
}

