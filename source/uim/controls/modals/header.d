module uim.controls.modals.header;

@safe: 
import uim.controls;

class DUIMModalHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMModalHeaderControl"));

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
mixin(ControlCalls!("UIMModalHeaderControl", "DUIMModalHeaderControl"));
mixin(ControlCalls!("UIMModalHeader", "DUIMModalHeaderControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMModalHeader);

    auto control = UIMModalHeader;
  }
}