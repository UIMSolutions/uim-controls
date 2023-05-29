module uim.controls.forms.elements.element;

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

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    switch(labelPos) {
        case "left":  return [H5Div(["mb-3", "row"], label, control)].toH5;
        case "right": return [H5Div(["mb-3", "row"], control, label)].toH5;
        case "bottom": return [H5Div(["mb-3"], control, label)].toH5;
        default: return [H5Div(["mb-3"], label, control)].toH5;
    }
  }
}
mixin(ControlCalls!("UIMFormElementControl", "DUIMFormElementControl"));
mixin(ControlCalls!("UIMFormElement", "DUIMFormElementControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormElement);
  assert(UIMFormElement.noId == `<div class="mb-3"></div>`);
}}
