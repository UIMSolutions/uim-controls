module uim.controls.datas.data;

@safe: 
import uim.controls;

class DUIMDataControl : DUIMControl {
  mixin(ControlThis!("UIMDataControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("data");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDataControl", "DUIMDataControl"));
mixin(ControlCalls!("UIMData", "DUIMDataControl"));

version(test_uim_controls) { unittest {
  assert(UIMData);
  assert(UIMData.noId == `<div class="data"></div>`);
}}