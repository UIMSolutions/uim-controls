module web.controls.inputs.groups.text;

@safe: 
import web.controls;

class DUIMTextAddonControl : DUIMControl {
  mixin(ControlThis!("UIMTextAddonControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-group-text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTextAddonControl", "DUIMTextAddonControl"));
mixin(ControlCalls!("UIMTextAddon", "DUIMTextAddonControl"));

version(test_uim_controls) { unittest {
  assert(UIMTextAddon);
  assert(UIMTextAddon.noId == `<span class="input-group-text"></span>`);
}}
