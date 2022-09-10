module uim.controls.modals.button;

@safe: 
import uim.controls;

class DUIMModalButtonControl : DUIMButtonControl {
  mixin(ControlThis!("UIMModalButtonControl"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes(["data-bs-toggle":"modal"]);
  }

  mixin(OProperty!("string", "targetId"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myAttributes["data-bs-target"] = "#"~this.targetId;
  }
}
mixin(ControlCalls!("UIMModalButtonControl", "DUIMModalButtonControl"));
mixin(ControlCalls!("UIMModalButton", "DUIMModalButtonControl"));

version(test_uim_controls) { unittest {
  assert(UIMModalButton);
  assert(UIMModalButton.noId == `<button class="btn" data-bs-target="#" data-bs-toggle="modal"></button>`);
}}