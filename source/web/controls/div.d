module web.controls.div;

@safe: 
import web.controls;

class DUIMDivControl : DUIMControl {
  mixin(ControlThis!("UIMDivControl"));

  override void initialize() {
    super.initialize;

    this
      .printable(true);
  }

  mixin(OProperty!("bool", "printable"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (!printable) myClasses ~= "d-print-none";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDivControl", "DUIMDivControl"));
mixin(ControlCalls!("UIMDiv", "DUIMDivControl"));

version(test_uim_controls) { unittest {
  assert(UIMDiv);
  assert(UIMDiv.noId == `<div></div>`);
}}