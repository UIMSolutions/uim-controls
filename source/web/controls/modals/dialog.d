module web.controls.modals.dialog;

@safe: 
import web.controls;

class DUIMModalDialogControl : DUIMControl {
  mixin(ControlThis!("UIMModalDialogControl"));

  override void initialize() {
    super.initialize;

    this 
      .classes("modal-dialog")
      .attributes(["role":"document"]);
  }

  mixin(OProperty!("bool", "scrollable"));
  mixin(OProperty!("bool", "centered"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (scrollable) myClasses ~= "modal-dialog-scrollable";
    if (centered)   myClasses ~= "modal-dialog-centered";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMModalDialogControl", "DUIMModalDialogControl"));
mixin(ControlCalls!("UIMModalDialog", "DUIMModalDialogControl"));

version(test_uim_controls) { unittest {
    assert(UIMModalDialog);
    assert(UIMModalDialog.noId == `<div class="modal-dialog" role="document"></div>`);
}}