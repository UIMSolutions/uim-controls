module uim.controls.popovers.popover;

@safe:
import uim.controls;

class DUIMPopoverControl : DUIMControl {
  mixin(ControlThis!("UIMPopoverControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
auto UIMPopoverControl() { return new DUIMPopoverControl; }
auto UIMPopover() { return new DUIMPopoverControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
