module uim.controls.collapses.collapse;

@safe: 
import uim.controls;

class DUIMCollapseControl : DUIMControl {
  mixin(ControlThis!("UIMCollapseControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["collapse"]);
  }
}
mixin(ControlCalls!("UIMCollapseControl", "DUIMCollapseControl"));
mixin(ControlCalls!("UIMCollapse", "DUIMCollapseControl"));

version(test_uim_controls) { unittest {
  assert(UIMCollapse);
  assert(UIMCollapse.noId == `<div class="collapse"></div>`);
}}