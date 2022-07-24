module uim.controls.inputs.groups.text;

@safe: 
import uim.controls;

class DUIMTextAddonControl : DUIMControl {
  mixin(ControlThis!("UIMTextAddonControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-group-text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~H5Span(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTextAddonControl", "DUIMTextAddonControl"));
mixin(ControlCalls!("UIMTextAddon", "DUIMTextAddonControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTextAddon);

    auto control = UIMTextAddon;
  }
}
