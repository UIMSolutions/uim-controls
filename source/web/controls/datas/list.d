module web.controls.datas.list;

@safe: 
import web.controls;

class DUIMDataListControl : DUIMControl {
  mixin(ControlThis!("UIMDataListControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("datalist");
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
mixin(ControlCalls!("UIMDataListControl", "DUIMDataListControl"));
mixin(ControlCalls!("UIMDataList", "DUIMDataListControl"));

version(test_uim_controls) { unittest {
  assert(UIMDataList);
  assert(UIMDataList.noId == `<div class="datalist"></div>`);
}}