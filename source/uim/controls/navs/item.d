module uim.controls.navs.item;

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
    auto results = super.toH5(options);

    return results~
      H5Li(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMNavItemControl", "DUIMNavItemControl"));
mixin(ControlCalls!("UIMNavItem", "DUIMNavItemControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
