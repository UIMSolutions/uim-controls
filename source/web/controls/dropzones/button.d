module uim.controls.dropzones.button;

@safe: 
import uim.controls;

class DUIMDropzoneButtonControl : DUIMButtonControl {
  mixin(ControlThis!("UIMDropzoneButtonControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dz-button"])
      .type("button");

  }
}
mixin(ControlCalls!("UIMDropzoneButtonControl", "DUIMDropzoneButtonControl"));
mixin(ControlCalls!("UIMDropzoneButton", "DUIMDropzoneButtonControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropzoneButton);
  writeln(UIMDropzoneButton.noId);
  assert(UIMDropzoneButton.noId == `<button class="dz-button" type="button"></button>`);
}}