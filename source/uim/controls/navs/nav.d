module uim.controls.navs.nav;

@safe: 
import uim.controls;

class DUIMNavControl : DUIMControl {
  mixin(ControlThis!("UIMNavControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["nav"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Ul(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMNavControl", "DUIMNavControl"));
mixin(ControlCalls!("UIMNav", "DUIMNavControl"));

version(test_uim_controls) { unittest {
    // TODO
  }
}
