module uim.controls.forms.controls.control;

@safe: 
import uim.controls;

class DUIMFormElementControl : DUIMControl {
  mixin(ControlThis!("UIMFormElementControl"));

  override void initialize() {
    super.initialize;

    this
        .labelPos("top"); 
  }

  mixin(OProperty!("string", "labelPos")); // top (default), left, right, bottom
  mixin(OProperty!("bool", "hideLabel")); 
  mixin(OProperty!("DH5Obj", "label")); 
  mixin(OProperty!("DH5Obj", "control")); 
  mixin(OProperty!("bool", "hideLabel")); 

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    switch(labelPos) {
        case "left":  return [H5Div(["mb-3", "row"], myLabel, myControl].toH5;
        case "right": return [H5Div(["mb-3", "row"], myControl, myLabel].toH5;
        case "bottom": return [H5Div(["mb-3"], myControl, myLabel].toH5;
        default: return [H5Div(["mb-3"], myLabel, myControl].toH5;
    }
  }
}
mixin(ControlCalls!("UIMFormElementControl", "DUIMFormElementControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormElementControl);
  assert(UIMFormElementControl.noId == ˋ<div class="mb-3 row"></div>ˋ);
}}
