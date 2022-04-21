module uim.controls.empties.header;

@safe: 
import uim.controls;

class DUIMEmptyHeaderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptyHeaderControl() { return new DUIMEmptyHeaderControl; }