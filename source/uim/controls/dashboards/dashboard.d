module uim.controls.carousels.dashboard;

@safe: 
import uim.controls;

class DUIMDashboardControl : DUIMControl {
  mixin(ControlThis!("UIMDashboard"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
mixin(ControlCalls!("UIMDashboardControl", "DUIMDashboardControl"));
mixin(ControlCalls!("UIMDashboard", "DUIMDashboardControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDashboard);

    auto control = UIMDashboard;
    // TODO
  }
}