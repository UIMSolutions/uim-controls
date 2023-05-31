module web.controls.forms.selectgroups.selectgroup;

@safe: 
import web.controls;

class DUIMSelectGroupControl : DUIMControl {
  mixin(ControlThis!("UIMSelectGroupControl"));

  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-selectgroup"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMSelectGroupControl", "DUIMSelectGroupControl"));
mixin(ControlCalls!("UIMSelectGroup", "DUIMSelectGroupControl"));

version(test_uim_controls) { unittest {
    assert(UIMSelectGroup);

    auto control = UIMSelectGroup;
  }
}
