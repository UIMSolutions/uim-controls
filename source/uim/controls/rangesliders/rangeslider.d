module uim.controls.rangesliders.rangeslider;

@safe: 
import uim.controls;

class DUIMRangeSliderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMRangeSliderControl() { return new DUIMRangeSliderControl; }
auto UIMRangeSlider() { return new DUIMRangeSliderControl; }

version(test_uim_controls) {
  unittest {
    // TODO 
  }
}
