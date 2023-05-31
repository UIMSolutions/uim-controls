module web.controls.panels.panel;

@safe: 
import web.controls;

class DUIMPanelControl : DUIMControl {
  mixin(ControlThis!("UIMPanelControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("panel");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMPanelControl", "DUIMPanelControl"));
mixin(ControlCalls!("UIMPanel", "DUIMPanelControl"));

version(test_uim_controls) { unittest {
  assert(UIMPanel);
  assert(UIMPanel.noId == `<div class="panel"></div>`);
}}
