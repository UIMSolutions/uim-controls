module uim.controls.navs.items.dropdown;

@safe: 
import uim.controls;

class DUIMDropdownNavItemControl : DUIMNavItemControl {
  mixin(ControlThis!("UIMDropdownNavItemControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["dropdown"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDropdownNavItemControl", "DUIMDropdownNavItemControl"));
mixin(ControlCalls!("UIMDropdownNavItem", "DUIMDropdownNavItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownNavItem);
  assert(UIMDropdownNavItem.noId == `<li class="dropdown nav-item"></li>`);
}}
