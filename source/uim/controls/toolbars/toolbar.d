module uim.controls.toolbars.toolbar;

@safe: 
import uim.controls;

class DUIMToolbarControl : DUIMControl {
  mixin(ControlThis!("UIMToolbar"));

  override void initialize() {
    super.initialize;

  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMToolbarControl", "DUIMToolbarControl"));
mixin(ControlCalls!("UIMToolbar", "DUIMToolbarControl"));

version(test_uim_controls) { unittest {
    assert(UIMToolbar);

    auto control = UIMToolbar;
    // TODO
  }
}
