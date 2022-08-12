module uim.controls.modals.footer;

@safe: 
import uim.controls;

class DUIMModalFooterControl : DUIMControl {
  mixin(ControlThis!("UIMModalFooterControl"));

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
mixin(ControlCalls!("UIMModalFooterControl", "DUIMModalFooterControl"));
mixin(ControlCalls!("UIMModalFooter", "DUIMModalFooterControl"));

version(test_uim_controls) { unittest {
    assert(UIMModalFooter);

    auto control = UIMModalFooter;
  }
}