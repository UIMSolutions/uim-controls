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

  mixin(OProperty!("DUIMModalHeaderControl[]", "headers"));
  mixin(OProperty!("DUIMModalBodyControl[]", "bodies"));
  mixin(OProperty!("DUIMModalFooterControl[]", "footers"));

  mixin(OProperty!("bool", "scrollable"));
  mixin(OProperty!("bool", "centered"));

  override void initialize() {
    super.initialize;

    this
      .classes("modal")
      .attributes(["tabindex":"-1"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if ( // If using slots
      this.headers.length > 0 ||
      this.bodies.length > 0 ||
      this.footers.length > 0) {
      myContent = this.headers.toH5~this.bodies.toH5~this.footers.toH5;
      myContent = UIMModalContent(myContent).toH5;
      myContent = UIMModalDialog(myContent)
        .scrollable(scrollable).centered(centered).toH5;
    }
    // General 
    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;

      
/*     auto myModal = BS5Modal;
    if (id) { myModal.id(this.id); }
    if (fade) { myModal.addClasses("fade"); }

    auto myDialog = BS5ModalDialog;
    if (size) { myDialog.addClasses("modal-"~size); }

    auto myContent = BS5ModalContent;
    if (header) { myContent.header(this.header); }
    if (body_) { myContent.body_(bodyClasses, bodyAttributes, this.body_); }
    if (footer) { myContent.footer(this.footer); }

    if (visible) return [myDialog(myContent)].toH5;
    return [myModal(myDialog(myContent))].toH5; */
  }
}
mixin(ControlCalls!("UIMModalControl", "DUIMModalControl"));
mixin(ControlCalls!("UIMModal", "DUIMModalControl"));

version(test_uim_controls) { unittest {  
    assert(UIMModal);
    assert(UIMModal.noId == `<div class="modal" tabindex="-1"></div>`);
}}

