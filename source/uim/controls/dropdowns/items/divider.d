module uim.controls.dropdowns.items.divider;

@safe: 
import uim.controls;

class DUIMDropdownDividerControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownDividerControl"));

  // mixin(OProperty!("bool", "isDivider"));

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-divider"])
      .isDivider(true); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [BS5DropdownDivider].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownDividerControl", "DUIMDropdownDividerControl"));
mixin(ControlCalls!("UIMDropdownDivider", "DUIMDropdownDividerControl"));

version(test_uim_controls) { unittest {
  writeln(UIMDropdown);
  assert(UIMDropdown);
}}