module web.controls.sliders.slider;

@safe: 
import web.controls;

class DUIMSliderControl : DUIMControl {
  mixin(ControlThis!("UIMSliderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("slider");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMSliderControl", "DUIMSliderControl"));
mixin(ControlCalls!("UIMSlider", "DUIMSliderControl"));

version(test_uim_controls) { unittest {
    assert(UIMSlider);
    assert(UIMSlider.noId == `<div class="slider"></div>`);
  }
}
