module uim.controls.forms.inputs.groups.text;

@safe: 
import uim.controls;

class DUIMInputGroupTextControl : DUIMControl {
  mixin(ControlThis!("UIMInputGroupTextControl"));

  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-group-text"]);
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
mixin(ControlCalls!("UIMInputGroupTextControl", "DUIMInputGroupTextControl"));
mixin(ControlCalls!("UIMInputGroupText", "DUIMInputGroupTextControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMInputGroupText);

    auto control = UIMInputGroupText;
  }
}
