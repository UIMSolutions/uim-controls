module uim.controls.navbars.collapse;

@safe: 
import uim.controls;

class DUIMNavbarCollapseControl : DUIMCollapseControl {
  mixin(ControlThis!("UIMNavbarCollapseControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("navbar-collapse");
  }
}
mixin(ControlCalls!("UIMNavbarCollapseControl", "DUIMNavbarCollapseControl"));
mixin(ControlCalls!("UIMNavbarCollapse", "DUIMNavbarCollapseControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarCollapse);
  writeln(UIMNavbarCollapse);
  assert(UIMNavbarCollapse.noId == `<div class="collapse navbar-collapse"></div>`);
}}
