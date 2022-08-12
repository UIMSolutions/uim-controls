module uim.controls.sliders.slider;

@safe: 
import uim.controls;

class DUIMSliderControl : DUIMControl {
  mixin(ControlThis!("UIMSliderControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMSliderControl", "DUIMSliderControl"));
mixin(ControlCalls!("UIMSlider", "DUIMSliderControl"));

version(test_uim_controls) { unittest {
    assert(UIMSlider);

    auto control = UIMSlider;
  }
}
