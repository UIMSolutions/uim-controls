module uim.controls.sheets.sheet;


@safe: 
import uim.controls;

class DUIMSheetControl : DUIMControl {
  mixin(ControlThis!("UIMSheetControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["sheet"]);
  }
}
mixin(ControlCalls!("UIMSheetControl", "DUIMSheetControl"));
mixin(ControlCalls!("UIMSheet", "DUIMSheetControl"));

version(test_uim_controls) { unittest {
  assert(UIMSheet);
  assert(UIMSheet.noId == `<div class="sheet"></div>`);
}}