module uim.controls.modals.dialog;

@safe: 
import uim.controls;

class DUIMModalDialogControl : DUIMControl {
  mixin(ControlThis!("UIMModalDialogControl"));

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
mixin(ControlCalls!("UIMModalDialogControl", "DUIMModalDialogControl"));
mixin(ControlCalls!("UIMModalDialog", "DUIMModalDialogControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMModalDialog);

    auto control = UIMModalDialog;
  }
}