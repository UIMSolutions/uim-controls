module uim.controls.dropdowns.columns;

@safe: 
import uim.controls;

class DUIMDropdownMenuColumnsControl : DUIMDivControl {
  mixin(ControlThis!("UIMDropdownMenuColumnsControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown-menu-columns"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDropdownMenuColumnsControl", "DUIMDropdownMenuColumnsControl"));
mixin(ControlCalls!("UIMDropdownMenuColumns", "DUIMDropdownMenuColumnsControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownMenuColumns);
  assert(UIMDropdownMenuColumns.noId == `<div class="dropdown-menu-columns"></div>`);
}}
