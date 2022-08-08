module uim.controls.dropdowns.toggle;

@safe: 
import uim.controls;

class DUIMDropdownToggleControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownToggleControl"));

 mixin(OProperty!("string", "color"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown-toggle"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      UIMButton(myId, myClasses, ["data-bs-toggle":"dropdown", "aria-expanded":"false"]).color(color);
  }
}
mixin(ControlCalls!("UIMDropdownToggleControl", "DUIMDropdownToggleControl"));
mixin(ControlCalls!("UIMDropdownToggle", "DUIMDropdownToggleControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDropdownToggle);

    auto control = UIMDropdownToggle;
    // TODO
  }
}