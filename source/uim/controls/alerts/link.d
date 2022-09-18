module uim.controls.alerts.link;

@safe: 
import uim.controls;

class DUIMAlertLinkControl : DUIMLinkControl {
  mixin(ControlThis!("UIMAlertLinkControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .link("#");
  }
}
mixin(ControlCalls!("UIMAlertLinkControl", "DUIMAlertLinkControl"));
mixin(ControlCalls!("UIMAlertLink", "DUIMAlertLinkControl"));

version(test_uim_controls) { unittest {
  assert(UIMAlertLink);
  assert(UIMAlertLink.toId == `<a class="alert-link" href="#"></a>`);
}}
