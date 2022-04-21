module uim.controls.rangesliders.rangeslider;

@safe: 
import uim.controls;

class DUIMRangeSliderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMRangeSliderControl() { return new DUIMRangeSliderControl; }