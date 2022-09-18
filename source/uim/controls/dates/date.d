module uim.controls.dates.date;

@safe: 
import uim.controls;

class DUIMDateControl : DUIMControl {
  mixin(ControlThis!("UIMDateControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["date"]);
  }
}
mixin(ControlCalls!("UIMDateControl", "DUIMDateControl"));
mixin(ControlCalls!("UIMDate", "DUIMDateControl"));

version(test_uim_controls) { unittest {
  assert(UIMDate);
  assert(UIMDate.noId == `<div class="date"></div>`);
}}