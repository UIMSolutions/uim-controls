module uim.controls.dividers.divider;

@safe: 
import uim.controls;

class DUIMDividerControl : DUIMControl {
  mixin(ControlThis!("UIMDividerControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDividerControl", "DUIMDividerControl"));
mixin(ControlCalls!("UIMDivider", "DUIMDividerControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDivider);

    auto control = UIMDivider;
    // TODO
  }
}
