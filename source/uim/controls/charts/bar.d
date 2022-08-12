module uim.controls.charts.bar;

@safe: 
import uim.controls;

class DUIMBarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMBarChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("bar"); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMPieChartControl", "DUIMBarChartControl"));
mixin(ControlCalls!("UIMBarChart", "DUIMBarChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMBarChart);

    auto control = UIMBarChart;
  }
}

