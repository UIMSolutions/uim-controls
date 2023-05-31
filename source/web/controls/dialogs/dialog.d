module web.controls.dialogs.dialog;

@safe: 
import web.controls;

class DUIMDialogControl : DUIMControl {
  mixin(ControlThis!("UIMDialogControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("dialog");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDialogControl", "DUIMDialogControl"));
mixin(ControlCalls!("UIMDialog", "DUIMDialogControl"));

version(test_uim_controls) { unittest {
  assert(UIMDialog);
  assert(UIMDialog.noId == `<div class="dialog"></div>`);
}}
