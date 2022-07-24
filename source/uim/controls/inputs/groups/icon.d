module uim.controls.inputs.groups.icon;

@safe: 
import uim.controls;

class DUIMIconAddonControl : DUIMControl {
  mixin(ControlThis!("UIMIconAddonControl"));

  mixin(OProperty!("string", "icon"));
  
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

    return results~H5Span(myId, myClasses, myAttributes, tablerIcon(icon));
  }
}
mixin(ControlCalls!("UIMIconAddonControl", "DUIMIconAddonControl"));
mixin(ControlCalls!("UIMIconAddon", "DUIMIconAddonControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMIconAddon);

    auto control = UIMIconAddon;
  }
}
