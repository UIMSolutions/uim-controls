module uim.controls.toolbars.toolbar;

@safe: 
import uim.controls;

class DUIMToolbarControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMToolbarControl() { return new DUIMToolbarControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
