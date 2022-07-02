module uim.controls.alerts.link;

@safe: 
import uim.controls;

class DUIMAlertLinkControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .attributes(["href":"#"]);
  }
}
auto UIMAlertLinkControl() { return new DUIMAlertLinkControl; }

version(test_uim_controls) {
  unittest {
  }
}
