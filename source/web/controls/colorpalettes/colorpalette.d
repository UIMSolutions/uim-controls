module web.controls.colorpalettes.colorpalette;

@safe: 
import web.controls;

class DUIMColorPaletteControl : DUIMControl {
  mixin(ControlThis!("UIMColorPaletteControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["color-palette"]);
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMColorPaletteControl", "DUIMColorPaletteControl")); 
mixin(ControlCalls!("UIMColorPalette", "DUIMColorPaletteControl")); 

version(test_uim_controls) { unittest {
  assert(UIMColorPalette);
  assert(UIMColorPalette.noId == `<div class="color-palette"></div>`);
}}
