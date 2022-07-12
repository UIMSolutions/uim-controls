module uim.controls.trees.tree;

@safe: 
import uim.controls;

class DUIMTreeControl : DUIMControl {
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
auto UIMTreeControl() { return new DUIMTreeControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
