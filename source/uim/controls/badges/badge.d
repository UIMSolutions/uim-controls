module uim.controls.badges.badge;

@safe: 
import uim.controls;

class DUIMAlertTitleControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

  }
}
auto UIMAlertTitleControl() { return new DUIMAlertTitleControl; }