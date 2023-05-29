module uim.controls.dropzones.message;

@safe: 
import uim.controls;

class DUIMDropzoneMessageControl : DUIMDivControl {
  mixin(ControlThis!("UIMDropzoneMessageControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dz-message"]);
  }
}
mixin(ControlCalls!("UIMDropzoneMessageControl", "DUIMDropzoneMessageControl"));
mixin(ControlCalls!("UIMDropzoneMessage", "DUIMDropzoneMessageControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropzoneMessage);
  assert(UIMDropzoneMessage.noId == `<div class="dz-message"></div>`);
}}