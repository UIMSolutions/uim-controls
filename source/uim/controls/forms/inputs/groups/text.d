module uim.controls.forms.inputs.groups.text;

@safe: 
import uim.controls;

class DUIMTextInputGroupControl : DUIMControl {
  mixin(ControlThis!("UIMTextInputGroupControl"));

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
mixin(ControlCalls!("UIMTextInputGroupControl", "DUIMTextInputGroupControl"));
mixin(ControlCalls!("UIMTextInputGroup", "DUIMTextInputGroupControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTextInputGroup);

    auto control = UIMTextInputGroup;
  }
}
