module uim.controls.navs.items.item;

@safe: 
import uim.controls;

class DUIMNavItemControl : DUIMControl {
  mixin(ControlThis!("UIMNavItemControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["nav-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Li(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMNavItemControl", "DUIMNavItemControl"));
mixin(ControlCalls!("UIMNavItem", "DUIMNavItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavItem);
  assert(UIMNavItem.noId == `<li class="nav-item"></li>`);
}}
