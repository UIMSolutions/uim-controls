module uim.controls.forms.selectgroups.label;

@safe: 
import uim.controls;

class DUIMSelectGroupLabelControl : DUIMControl {
  mixin(ControlThis!("UIMSelectGroupLabelControl"));

  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-selectgroup-label"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
        H5Span(myId, myClasses, myAttributes, myContent)    
    ].toH5;
  }
}
mixin(ControlCalls!("UIMSelectGroupLabelControl", "DUIMSelectGroupLabelControl"));
mixin(ControlCalls!("UIMSelectGroupLabel", "DUIMSelectGroupLabelControl"));

version(test_uim_controls) { unittest {
    assert(UIMSelectGroupLabel);

    auto control = UIMSelectGroupLabel;
  }
}
