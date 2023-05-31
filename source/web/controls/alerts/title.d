module web.controls.alerts.title;

@safe: 
import web.controls;

class DUIMAlertTitleControl : DUIMControl {
  mixin(ControlThis!("UIMAlertTitleControl"));

  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMAlertTitleControl", "DUIMAlertTitleControl"));
mixin(ControlCalls!("UIMAlertTitle", "DUIMAlertTitleControl"));

version(test_uim_controls) { unittest {
    assert(UIMAlertTitle);

    auto control = UIMAlertTitle;
  }
}
