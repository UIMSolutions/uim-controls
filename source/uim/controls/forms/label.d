module uim.controls.forms.label;

@safe: 
import uim.controls;

class DUIMFormLabelControl : DUIMControl {
  mixin(ControlThis!("UIMFormLabelControl"));

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
mixin(ControlCalls!("UIMFormLabelControl", "DUIMFormLabelControl"));
mixin(ControlCalls!("UIMFormLabel", "DUIMFormLabelControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormLabel);

    auto control = UIMFormLabel;
  }
}
