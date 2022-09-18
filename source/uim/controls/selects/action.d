module uim.controls.selects.action;

@safe: 
import uim.controls;

class DUIMActionSelectControl : DUIMSelectControl {
  mixin(ControlThis!("UIMActionSelectControl"));

  // mixin(OProperty!("string", "icon"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMActionSelectControl", "DUIMActionSelectControl"));
mixin(ControlCalls!("UIMActionSelect", "DUIMActionSelectControl"));

version(test_uim_controls) { unittest {
  assert(UIMActionSelect);
  // assert(UIMActionSelect.noId == `<option></option>`);
}}
