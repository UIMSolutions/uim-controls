module uim.controls.rangesliders.rangeslider;

@safe: 
import uim.controls;

class DUIMRangeSliderControl : DUIMControl {
  mixin(ControlThis!("UIMRangeSlider"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
 
    myAttributes["data-slider"] = ˋ'{"js-name": "slider1","start": 50,"range": {"min": 0,"max": 100}}'ˋ;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
    }
}
mixin(ControlCalls!("UIMRangeSliderControl", "DUIMRangeSliderControl"));
mixin(ControlCalls!("UIMRangeSlider", "DUIMRangeSliderControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRangeSlider);

    auto control = UIMRangeSlider;
    // TODO 
  }
}
