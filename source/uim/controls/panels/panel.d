module uim.controls.panels.panel;

@safe: 
import uim.controls;

class DUIMPanelControl : DUIMControl {
  mixin(ControlThis!("UIMPanelControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("panel");
  }
}
mixin(ControlCalls!("UIMPanelControl", "DUIMPanelControl"));
mixin(ControlCalls!("UIMPanel", "DUIMPanelControl"));

version(test_uim_controls) { unittest {
  assert(UIMPanel);
  assert(UIMPanel.noId == `<div class="panel"></div>`);
}}
