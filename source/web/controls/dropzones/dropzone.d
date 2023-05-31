module web.controls.dropzones.dropzone;

@safe: 
import web.controls;

class DUIMDropzoneControl : DUIMDivControl {
  mixin(ControlThis!("UIMDropzoneControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["date"]);
  }
}
mixin(ControlCalls!("UIMDropzoneControl", "DUIMDropzoneControl"));
mixin(ControlCalls!("UIMDropzone", "DUIMDropzoneControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropzone);
  assert(UIMDropzone.noId == `<div class="date"></div>`);
}}