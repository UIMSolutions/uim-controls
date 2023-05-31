module web.controls.forms.selectgroups.radio;

@safe: 
import web.controls;

class DUIMSelectGroupRadioControl : DUIMControl {
  mixin(ControlThis!("UIMSelectGroupRadioControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-selectgroup-input"])
      .attributes(["type":"radio"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMSelectGroupRadioControl", "DUIMSelectGroupRadioControl"));
mixin(ControlCalls!("UIMSelectGroupRadio", "DUIMSelectGroupRadioControl"));

version(test_uim_controls) { unittest {
    assert(UIMSelectGroupRadio);

    auto control = UIMSelectGroupRadio;
  }
}
