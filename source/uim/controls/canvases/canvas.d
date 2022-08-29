module uim.controls.canvases.canvas;

@safe: 
import uim.controls;

class DUIMCanvasControl : DUIMControl {
  mixin(ControlThis!("UIMCanvasControl"));

  mixin(OProperty!("string", "width"));
  mixin(OProperty!("string", "height"));
  
  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Canvas(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMCanvasControl", "DUIMCanvasControl"));
mixin(ControlCalls!("UIMCanvas", "DUIMCanvasControl"));

version(test_uim_controls) { unittest {
    assert(UIMCanvas);
    assert(UIMCanvas.noId == `<canvas></canvas>`);
}}
