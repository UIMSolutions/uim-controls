module uim.controls.popovers.popover;

@safe:
import uim.controls;

class DUIMPopoverControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMPopoverControl() { return new DUIMPopoverControl; }
auto UIMPopover() { return new DUIMPopoverControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
