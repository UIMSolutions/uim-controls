module uim.controls.modals.content;

@safe: 
import uim.controls;

class DUIMModalContentControl : DUIMControl {
  mixin(ControlThis!("UIMModalContentControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("modal-content");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMModalContentControl", "DUIMModalContentControl"));
mixin(ControlCalls!("UIMModalContent", "DUIMModalContentControl"));

version(test_uim_controls) { unittest {
  assert(UIMModalContent);
  assert(UIMModalContent.noId == `<div class="modal-content"></div>`);
}}