module uim.controls.columns.column;

@safe: 
import uim.controls;

class DUIMColumnControl : DUIMControl {
  mixin(ControlThis!("UIMColumnControl"));

  override void initialize() {
    super.initialize;
 
    this
      .classes("column");
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
mixin(ControlCalls!("UIMColumnControl", "DUIMColumnControl"));
mixin(ControlCalls!("UIMColumn", "DUIMColumnControl"));

version(test_uim_controls) { unittest {
  assert(UIMColumn);
  assert(UIMColumn.noId == `<div class="column"></div>`);
}}