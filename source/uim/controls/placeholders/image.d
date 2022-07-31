module uim.controls.placeholders.image;

@safe: 
import uim.controls;

class DUIMPlaceHolderImageControl : DUIMControl {
  mixin(ControlThis!("UIMPlaceHolderImageControl"));

  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMPlaceHolderImageControl", "DUIMPlaceHolderImageControl"));
mixin(ControlCalls!("UIMPlaceHolderImage", "DUIMPlaceHolderImageControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPlaceHolderImage);

    auto control = UIMPlaceHolderImage;
    // TODO
  }
}
