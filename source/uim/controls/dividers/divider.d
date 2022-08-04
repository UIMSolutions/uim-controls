module uim.controls.dividers.divider;

@safe: 
import uim.controls;

class DUIMDividerControl : DUIMControl {
  mixin(ControlThis!("UIMDividerControl"));

  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "color"));

  override void initialize() {
    super.initialize;

    this
      .classes(["hr-text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (position) myClasses ~= "hr-text-"~position;
    if (color) myClasses ~= "text-"~color;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMDividerControl", "DUIMDividerControl"));
mixin(ControlCalls!("UIMDivider", "DUIMDividerControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDivider);

    auto control = UIMDivider;
    // TODO
  }
}
