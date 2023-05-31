module web.controls.dropdowns.column;

@safe: 
import web.controls;

class DUIMDropdownMenuColumnControl : DUIMDivControl {
  mixin(ControlThis!("UIMDropdownMenuColumnControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown-menu-column"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDropdownMenuColumnControl", "DUIMDropdownMenuColumnControl"));
mixin(ControlCalls!("UIMDropdownMenuColumn", "DUIMDropdownMenuColumnControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownMenuColumn);
  assert(UIMDropdownMenuColumn.noId == `<div class="dropdown-menu-column"></div>`);
}}
