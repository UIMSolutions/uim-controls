module uim.controls.placeholders.placeholder;

@safe: 
import uim.controls;

class DUIMPlaceHolderControl : DUIMControl {
  mixin(ControlThis!("UIMPlaceHolderControl"));

  override void initialize() {
    super.initialize;
  }
}
auto UIMPlaceHolderControl() { return new DUIMPlaceHolderControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
