
module web.controls.toolbars.spacer;

@safe: 
import web.controls;

class DUIMToolbarSpacerControl : DUIMControl {
  mixin(ControlThis!("UIMToolbarSpacer"));

  override void initialize() {
    super.initialize;

    this
      .classes("toolbar-spacer");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMToolbarSpacerControl", "DUIMToolbarSpacerControl"));
mixin(ControlCalls!("UIMToolbarSpacer", "DUIMToolbarSpacerControl"));

version(test_uim_controls) { unittest {
    assert(UIMToolbarSpacer);
    assert(UIMToolbarSpacer.noId == `<div class="toolbar-spacer"></div>`);
}}
