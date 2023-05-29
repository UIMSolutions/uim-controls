module uim.controls.inputs.icons.addon;

@safe: 
import uim.controls;

class DUIMInputAddonControl : DUIMSpanControl {
  mixin(ControlThis!("UIMInputAddonControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["input-icon-addon"]);
  }

  mixin(OProperty!("string", "icon"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (icon) myContent ~= H5String(tablerIcon(icon));
  }
}
mixin(ControlCalls!("UIMInputAddonControl", "DUIMInputAddonControl"));
mixin(ControlCalls!("UIMInputAddon", "DUIMInputAddonControl"));

version(test_uim_controls) { unittest {
  assert(UIMInputAddon);
  assert(UIMInputAddon.noId == `<div class="input-icon-addon"></div>`);
}}
