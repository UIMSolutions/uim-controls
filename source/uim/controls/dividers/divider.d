module uim.controls.dividers.divider;

@safe: 
import uim.controls;

class DUIMDividerControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMDividerControl() { return new DUIMDividerControl; }