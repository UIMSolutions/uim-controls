module uim.controls.tokens.token;

@safe: 
import uim.controls;

class DUIMTokenControl : DUIMControl {
  mixin(ControlThis!("UIMTokenControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("token");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTokenControl", "DUIMTokenControl"));
mixin(ControlCalls!("UIMToken", "DUIMTokenControl"));

version(test_uim_controls) { unittest {
  assert(UIMToken);
  assert(UIMToken.noId == `<div class="token"></div>`);
}}
