module uim.controls.modals.modal;

@safe: 
import uim.controls;

class DUIMModalControl : DUIMControl {
  mixin(ControlThis!("UIMModalControl"));

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("bool", "fade"));
  mixin(OProperty!("bool", "visible"));
  
  mixin(OProperty!("DH5Obj[]", "header"));
  mixin(OProperty!("string[]", "headerClasses"));
  mixin(OProperty!("STRINGAA", "headerAttributes"));

  mixin(OProperty!("DH5Obj[]", "body_"));
  mixin(OProperty!("string[]", "bodyClasses"));
  mixin(OProperty!("STRINGAA", "bodyAttributes"));
  
  mixin(OProperty!("DH5Obj[]", "footer"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto myModal = BS5Modal;
    if (id) { myModal.id(this.id); }
    if (fade) { myModal.addClasses("fade"); }

    auto myDialog = BS5ModalDialog;
    if (size) { myDialog.addClasses("modal-"~size); }

    auto myContent = BS5ModalContent;
    if (header) { myContent.header(this.header); }
    if (body_) { myContent.body_(bodyClasses, bodyAttributes, this.body_); }
    if (footer) { myContent.footer(this.footer); }

    if (visible) return [myDialog(myContent)].toH5;
    return [myModal(myDialog(myContent))].toH5;
  }
}
mixin(ControlCalls!("UIMModalControl", "DUIMModalControl"));
mixin(ControlCalls!("UIMModal", "DUIMModalControl"));

version(test_uim_controls) {
  unittest {  
    assert(UIMModal);
    
    auto control = UIMModal;
  }
}

