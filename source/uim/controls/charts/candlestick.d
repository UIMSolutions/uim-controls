module uim.controls.charts.candlestick;

@safe: 
import uim.controls;

class DUIMCandlestickChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMCandlestickChartControl"));
  
  override void initialize() {
    super.initialize;
    
    this
      .type("candlestick"); 
  }
}
mixin(ControlCalls!("UIMCandlestickChartControl", "DUIMCandlestickChartControl"));
mixin(ControlCalls!("UIMCandlestickChart", "DUIMCandlestickChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMCandlestickChart);

    auto control = UIMCandlestickChart;
  }
}

