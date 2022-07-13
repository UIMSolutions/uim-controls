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
mixin(ControlCalls!("UIMAlertLinkControl", "DUIMAlertLinkControl"));
mixin(ControlCalls!("UIMAlertLink", "DUIMAlertLinkControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMAlertLink);

    auto control = UIMAlertLink;
    // TODO
  }
}
