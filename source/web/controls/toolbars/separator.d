module web.controls.toolbars.separator;

@safe: 
import web.controls;

class DUIMToolbarSeparatorControl : DUIMControl {
  mixin(ControlThis!("UIMToolbarSeparator"));

  override void initialize() {
    super.initialize;

    this
      .classes("toolbar-separator");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMToolbarSeparatorControl", "DUIMToolbarSeparatorControl"));
mixin(ControlCalls!("UIMToolbarSeparator", "DUIMToolbarSeparatorControl"));

version(test_uim_controls) { unittest {
  assert(UIMToolbarSeparator);
  assert(UIMToolbarSeparator.noId == `<div class="toolbar-separator"></div>`);
}}
