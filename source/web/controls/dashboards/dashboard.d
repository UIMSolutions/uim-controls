module web.controls.carousels.dashboard;

@safe: 
import web.controls;

class DUIMDashboardControl : DUIMControl {
  mixin(ControlThis!("UIMDashboard"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dashboard"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDashboardControl", "DUIMDashboardControl"));
mixin(ControlCalls!("UIMDashboard", "DUIMDashboardControl"));

version(test_uim_controls) { unittest {
  assert(UIMDashboard);
  assert(UIMDashboard.noId == `<div class="dashboard"></div>`);
}}