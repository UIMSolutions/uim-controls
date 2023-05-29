module uim.controls.dropdowns.dropend;

@safe: 
import uim.controls;

class DUIMDropdownDropendControl : DUIMDivControl {
  mixin(ControlThis!("UIMDropdownDropendControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropend"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDropdownDropendControl", "DUIMDropdownDropendControl"));
mixin(ControlCalls!("UIMDropdownDropend", "DUIMDropdownDropendControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownDropend);
  assert(UIMDropdownDropend.noId == `<div class="dropend"></div>`);
}}
