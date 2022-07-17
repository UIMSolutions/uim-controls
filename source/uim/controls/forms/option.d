module uim.controls.forms.label;

@safe: 
import uim.controls;

class DUIMOptionControl : DUIMControl {
  mixin(ControlThis!("UIMOptionControl"));

  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-label"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (forElement) myAttributes["for"] = forElement;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Label(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMOptionControl", "DUIMOptionControl"));
mixin(ControlCalls!("UIMOption", "DUIMOptionControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMOption);

    auto control = UIMOption;
  }
}
