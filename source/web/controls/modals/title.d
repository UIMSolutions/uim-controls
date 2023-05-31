module web.controls.modals.title;

@safe: 
import web.controls;

class DUIMModalTitleControl : DUIMControl {
  mixin(ControlThis!("UIMModalTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("modal-title");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5H5(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMModalTitleControl", "DUIMModalTitleControl"));
mixin(ControlCalls!("UIMModalTitle", "DUIMModalTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMModalTitle);
  assert(UIMModalTitle.noId == `<h5 class="modal-title"></h5>`);
}}