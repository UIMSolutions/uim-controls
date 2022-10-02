module uim.controls.buttons.list;

@safe: 
import uim.controls;

class DUIMButtonListControl : DUIMDivControl {
  mixin(ControlThis!("UIMButtonListControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["btn-list"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMButtonListControl", "DUIMButtonListControl"));
mixin(ControlCalls!("UIMButtonList", "DUIMButtonListControl"));

version(test_uim_controls) { unittest {
    assert(UIMButtonList);
    assert(UIMButtonList.noId == `<div class="btn-list"></div>`);
}}

