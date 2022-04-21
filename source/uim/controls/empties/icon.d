module uim.controls.empties.icon;

@safe: 
import uim.controls;

class DUIMEmptyIconControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptyIconControl() { return new DUIMEmptyIconControl; }