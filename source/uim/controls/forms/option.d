module uim.controls.forms.option;

@safe: 
import uim.controls;

class DUIMOptionControl : DUIMControl {
  mixin(ControlThis!("UIMOptionControl"));

  mixin(OProperty!("bool", "selected"));
  mixin(OProperty!("string", "value"));

  override void initialize() {
    super.initialize;

  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (selected) myAttributes["selected"] = "selected";
    if (value) myAttributes["value"] = value;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Option(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMOptionControl", "DUIMOptionControl"));
mixin(ControlCalls!("UIMOption", "DUIMOptionControl"));

version(test_uim_controls) { unittest {
    assert(UIMOption);

    auto control = UIMOption;
  }
}
