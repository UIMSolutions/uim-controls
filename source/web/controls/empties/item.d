module web.controls.empties.item;

@safe: 
import web.controls;

class DUIMEmptyItemControl : DUIMDivControl {
  mixin(ControlThis!("UIMEmptyItemControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("empty-item");
  }
}
mixin(ControlCalls!("UIMEmptyItemControl", "DUIMEmptyItemControl"));
mixin(ControlCalls!("UIMEmptyItem", "DUIMEmptyItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmptyItem);
  assert(UIMEmptyItem.noId == `<div class="empty-item"></div>`);
}}