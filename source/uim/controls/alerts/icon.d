module uim.controls.alerts.icon;

@safe: 
import uim.controls;

class DUIMAlertIconControl : DUIMControl {
  mixin(ControlThis!("UIMAlertIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-icon"]);
  }
}
mixin(ControlCalls!("UIMAlertIconControl", "DUIMAlertIconControl"));
mixin(ControlCalls!("UIMAlertIcon", "DUIMAlertIconControl"));

version(test_uim_controls) { unittest {
    assert(UIMAlertIcon);
  }
}
