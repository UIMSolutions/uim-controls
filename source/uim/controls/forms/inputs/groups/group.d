module uim.controls.forms.inputs.groups.group;

@safe: 
import uim.controls;

class DUIMInputGroupControl : DUIMControl {
  mixin(ControlThis!("UIMInputGroupControl"));

  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-group"]);
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
mixin(ControlCalls!("UIMInputGroupControl", "DUIMInputGroupControl"));
mixin(ControlCalls!("UIMInputGroup", "DUIMInputGroupControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMInputGroup);

    auto control = UIMInputGroup;
  }
}
