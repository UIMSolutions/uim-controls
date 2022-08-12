module uim.controls.dropdowns.toggle;

@safe: 
import uim.controls;

class DUIMDropdownToggleControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownToggleControl"));

  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "size"));
  mixin(OProperty!("bool", "outline"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown-toggle"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myAttributes["data-bs-toggle"] = "dropdown";
    myAttributes["aria-expanded"] = "false";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      UIMButton(myId, myClasses, myAttributes, myContent)
        .color(color).title(title).icon(icon).size(size).outline(outline);
  }
}
mixin(ControlCalls!("UIMDropdownToggleControl", "DUIMDropdownToggleControl"));
mixin(ControlCalls!("UIMDropdownToggle", "DUIMDropdownToggleControl"));

version(test_uim_controls) { unittest {
    assert(UIMDropdownToggle);

    auto control = UIMDropdownToggle;
    // TODO
  }
}