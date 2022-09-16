module uim.controls.dates.data;

@safe: 
import uim.controls;

class DUIMDataControl : DUIMControl {
  mixin(ControlThis!("UIMDataControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["data"]);
  }
}
mixin(ControlCalls!("UIMDataControl", "DUIMDataControl"));
mixin(ControlCalls!("UIMData", "DUIMDataControl"));

version(test_uim_controls) { unittest {
  assert(UIMData);
  assert(UIMData.noId == `<div class="data"></div>`);
}}