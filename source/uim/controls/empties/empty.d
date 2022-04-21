module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptyControl() { return new DUIMEmptyControl; }