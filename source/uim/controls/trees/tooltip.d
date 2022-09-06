module uim.controls.trees.tree;

@safe: 
import uim.controls;

class DUIMTreeControl : DUIMControl {
  mixin(ControlThis!("UIMTreeControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("tree");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTreeControl", "DUIMTreeControl"));
mixin(ControlCalls!("UIMTree", "DUIMTreeControl"));

version(test_uim_controls) { unittest {
    assert(UIMTree);
    assert(UIMTree.noId == `<div class="tree"></div>`);
  }
}
