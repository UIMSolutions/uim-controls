module web.controls.trees.tree;

@safe: 
import web.controls;

class DUIMTreeControl : DUIMDivControl {
  mixin(ControlThis!("UIMTreeControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("tree");
  }
}
mixin(ControlCalls!("UIMTreeControl", "DUIMTreeControl"));
mixin(ControlCalls!("UIMTree", "DUIMTreeControl"));

version(test_uim_controls) { unittest {
  assert(UIMTree);
  assert(UIMTree.noId == `<div class="tree"></div>`);
}}
