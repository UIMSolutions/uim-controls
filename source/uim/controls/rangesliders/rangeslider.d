module uim.controls.rangesliders.rangeslider;

@safe: 
import uim.controls;

class DUIMRangeSliderControl : DUIMControl {
  mixin(ControlThis!("UIMRangeSlider"));

  mixin(OProperty!("string", "startValue"));
  mixin(OProperty!("string", "minValue"));
  mixin(OProperty!("string", "maxValue"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
 
    myAttributes["data-slider"] = `'{"js-name": "%s","start": %s,"range": {"min": %s,"max": %s}}'`.format(myId, startValue, minValue, maxValue);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMRangeSliderControl", "DUIMRangeSliderControl"));
mixin(ControlCalls!("UIMRangeSlider", "DUIMRangeSliderControl"));

version(test_uim_controls) { unittest {
    assert(UIMRangeSlider);

    auto control = UIMRangeSlider;
    // TODO 
  }
}
