module uim.controls.alerts.title;

@safe: 
import uim.controls;

class DUIMAlertTitleControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

  }
}
auto UIMAlertTitleControl() { return new DUIMAlertTitleControl; }
auto UIMAlertTitle() { return new DUIMAlertTitleControl; }

version(test_uim_controls) {
  unittest {
  }
}
