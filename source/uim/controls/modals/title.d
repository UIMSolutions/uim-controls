module uim.controls.modals.title;

@safe: 
import uim.controls;

class DUIMModalTitleControl : DUIMControl {
  mixin(ControlThis!("UIMModalTitleControl"));

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
mixin(ControlCalls!("UIMModalTitleControl", "DUIMModalTitleControl"));
mixin(ControlCalls!("UIMModalTitle", "DUIMModalTitleControl"));

version(test_uim_controls) { unittest {
    assert(UIMModalTitle);

    auto control = UIMModalTitle;
  }
}