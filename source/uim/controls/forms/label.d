module uim.controls.forms.label;

@safe: 
import uim.controls;

class DUIMFormLabelControl : DUIMControl {
  mixin(ControlThis!("UIMFormLabelControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-label"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Label(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormLabelControl", "DUIMFormLabelControl"));
mixin(ControlCalls!("UIMFormLabel", "DUIMFormLabelControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormLabel);

    auto control = UIMFormLabel;
  }
}
