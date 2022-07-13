module uim.controls.placeholders.placeholder;

@safe: 
import uim.controls;

class DUIMPlaceHolderControl : DUIMControl {
  mixin(ControlThis!("UIMPlaceHolderControl"));

  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMPlaceHolderControl", "DUIMPlaceHolderControl"));
mixin(ControlCalls!("UIMPlaceHolder", "DUIMPlaceHolderControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPlaceHolder);

    auto control = UIMPlaceHolder;
    // TODO
  }
}
