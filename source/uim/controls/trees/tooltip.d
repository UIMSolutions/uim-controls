module uim.controls.trees.tree;

@safe: 
import uim.controls;

class DUIMTreeControl : DUIMControl {
  mixin(ControlThis!("UIMTreeControl"));

  override void initialize() {
    super.initialize;

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTreeControl", "DUIMTreeControl"));
mixin(ControlCalls!("UIMTree", "DUIMTreeControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTree);

    auto control = UIMTree;
    // TODO
  }
}
