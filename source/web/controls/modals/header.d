module web.controls.modals.header;

@safe: 
import web.controls;

class DUIMModalHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMModalHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("modal-header");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMModalHeaderControl", "DUIMModalHeaderControl"));
mixin(ControlCalls!("UIMModalHeader", "DUIMModalHeaderControl"));

version(test_uim_controls) { unittest {
  assert(UIMModalHeader);
  assert(UIMModalHeader.noId == `<div class="modal-header"></div>`);
}}