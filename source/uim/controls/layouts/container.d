module uim.controls.layouts.container;

@safe: 
import uim.controls;

class DUIMContainerControl : DUIMLayoutControl {
  mixin(ControlThis!("UIMContainerControl"));

  mixin(OProperty!("string", "breakpoint"));
  mixin(OProperty!("bool", "fluid"));

  mixin(AddContent!("Row", "UIMRow"));
  mixin(AddContent!("RowCards", "UIMRowCards"));
  mixin(AddContent!("RowDeck", "UIMRowDeck"));
  
  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (fluid) { 
      myClasses ~= ["container-fluid"]; 
    }
    else {
      switch(breakpoint) {
        case "sm": myClasses ~= ["container-sm"]; break;
        case "md": myClasses ~= ["container-md"]; break;
        case "lg": myClasses ~= ["container-lg"]; break;
        case "xl": myClasses ~= ["container-xl"]; break;
        case "xxl": myClasses ~= ["container-xxl"]; break;
        case "fluid": myClasses ~= ["container-fluid"]; break;
        default: myClasses ~= ["container"]; break;
      }
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMContainerControl", "DUIMContainerControl"));
mixin(ControlCalls!("UIMContainer", "DUIMContainerControl"));

version(test_uim_controls) { unittest {
  assert(UIMContainer);
  assert(UIMContainer.noId == `<div class="container"></div>`);
}}
