module uim.controls.containers.container;

@safe: 
import uim.controls;

class DUIMContainerControl : DUIMDivControl {
  mixin(ControlThis!("UIMContainerControl"));

  override void initialize() {
    super.initialize;

    /* this
      .classes(["container"]); */
  }

  mixin(OProperty!("string", "mode"));
  
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses ~= (mode.length > 0) ? ["container-"~mode] : ["container"];
  }  
}
mixin(ControlCalls!("UIMContainerControl", "DUIMContainerControl"));
mixin(ControlCalls!("UIMContainer", "DUIMContainerControl"));

version(test_uim_controls) { unittest {
  assert(UIMContainer);
  assert(UIMContainer.noId == `<div class="container"></div>`);
}}