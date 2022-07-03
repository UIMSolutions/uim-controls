module uim.controls.alerts.link;

@safe: 
import uim.controls;

class DUIMAlertLinkControl : DUIMControl {
  mixin(ControlThis!("UIMAlertLinkControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .attributes(["href":"#"]);
  }
}
auto UIMAlertLinkControl() { return new DUIMAlertLinkControl; }
auto UIMAlertLink() { return new DUIMAlertLinkControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
