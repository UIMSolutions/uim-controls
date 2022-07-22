module uim.controls.forms.selectgroups.checkbox;

@safe: 
import uim.controls;

class DUIMSelectGroupCheckboxControl : DUIMControl {
  mixin(ControlThis!("UIMSelectGroupCheckboxControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-selectgroup-input"])
      .attributes(["type":"checkbox"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
        H5Label()
      
    ].toH5;
  }
}
mixin(ControlCalls!("UIMSelectGroupCheckboxControl", "DUIMSelectGroupCheckboxControl"));
mixin(ControlCalls!("UIMSelectGroupCheckbox", "DUIMSelectGroupCheckboxControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSelectGroupCheckbox);

    auto control = UIMSelectGroupCheckbox;
  }
}
