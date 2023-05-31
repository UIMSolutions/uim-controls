module web.controls.selects.action;

@safe: 
import web.controls;

class DUIMActionSelectControl : DUIMSelectControl {
  mixin(ControlThis!("UIMActionSelectControl"));

  // mixin(OProperty!("string", "icon"));

  override void initialize() {
    super.initialize;

    this
      .classes("select-action");
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
