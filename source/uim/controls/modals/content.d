module uim.controls.modals.content;

@safe: 
import uim.controls;

class DUIMModalContentControl : DUIMControl {
  mixin(ControlThis!("UIMModalContentControl"));

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
mixin(ControlCalls!("UIMModalContentControl", "DUIMModalContentControl"));
mixin(ControlCalls!("UIMModalContent", "DUIMModalContentControl"));

version(test_uim_controls) { unittest {
    assert(UIMModalContent);

    auto control = UIMModalContent;
  }
}