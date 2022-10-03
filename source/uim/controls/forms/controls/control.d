module uim.controls.forms.controls.control;

@safe: 
import uim.controls;

class DUIMFormBaseControl : DUIMControl {
  mixin(ControlThis!("UIMFormBaseControl"));

  override void initialize() {
    super.initialize;

    this
        .labelPos("top"); 
  }

  mixin(OProperty!("string", "labelPos")); // top (default), left, right, bottom

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    switch(labelPos) {
        case "left":  return [H5Div(["mb-3", "row"], myLabel, myElement].toH5;
        case "right": return [H5Div(["mb-3", "row"], myElement, myLabel].toH5;
        case "bottom": return [H5Div(["mb-3"], myElement, myLabel].toH5;
        default: return [H5Div(["mb-3"], myLabel, myElement].toH5;
    }
  }
}
mixin(ControlCalls!("UIMFormBaseControl", "DUIMFormBaseControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormBaseControl);
}}
