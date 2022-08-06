module uim.controls.tokens.token;

@safe: 
import uim.controls;

class DUIMTokenControl : DUIMControl {
  mixin(ControlThis!("UIMTokenControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTokenControl", "DUIMTokenControl"));
mixin(ControlCalls!("UIMToken", "DUIMTokenControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMToken);

    auto control = UIMToken;
  }
}
