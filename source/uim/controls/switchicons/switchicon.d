module uim.controls.switchicons.switchicon;

@safe: 
import uim.controls;

class DUIMSwitchIconControl : DUIMControl {
  mixin(ControlThis!("UIMSwitchIconControl"));

  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMSwitchIconControl", "DUIMSwitchIconControl"));
mixin(ControlCalls!("UIMSwitchIcon", "DUIMSwitchIconControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSwitchIcon);

    auto control = UIMSwitchIcon;
    // TODO
  }
}
