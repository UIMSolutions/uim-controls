module uim.controls.div;

@safe: 
import uim.controls;

class DUIMDivControl : DUIMControl {
  mixin(ControlThis!("UIMDivControl"));

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