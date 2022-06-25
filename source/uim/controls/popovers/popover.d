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