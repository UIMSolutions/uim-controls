module uim.controls.switchicons.switchicon;

@safe: 
import uim.controls;

class DUIMSwitchIconControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMSwitchIconControl() { return new DUIMSwitchIconControl; }
auto UIMSwitchIcon() { return new DUIMSwitchIconControl; }