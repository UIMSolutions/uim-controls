module uim.controls.switchicons.switchicon;

@safe: 
import uim.controls;

class DUIMSwitchIconControl : DUIMControl {
  mixin(ControlThis!("UIMSwitchIconControl"));

  override void initialize() {
    super.initialize;
  }
}
auto UIMSwitchIconControl() { return new DUIMSwitchIconControl; }
auto UIMSwitchIcon() { return new DUIMSwitchIconControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
