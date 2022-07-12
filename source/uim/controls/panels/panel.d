module uim.controls.panels.panel;

@safe: 
import uim.controls;

class DUIMPanelControl : DUIMControl {
  mixin(ControlThis!("UIMPanelControl"));

  override void initialize() {
    super.initialize;
  }
}
auto UIMPanelControl() { return new DUIMPanelControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
