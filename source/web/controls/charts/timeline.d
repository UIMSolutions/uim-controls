module web.controls.charts.timeline;

@safe: 
import web.controls;

class DUIMTimelineChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMTimelineChartControl"));
  
  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMTimelineChartControl", "DUIMTimelineChartControl"));
mixin(ControlCalls!("UIMTimelineChart", "DUIMTimelineChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMTimelineChart);

    auto control = UIMTimelineChart;
  }
}

