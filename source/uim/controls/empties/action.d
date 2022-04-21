module uim.controls.empties.action;

@safe: 
import uim.controls;

class DUIMEmptyActionControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptyActionControl() { return new DUIMEmptyActionControl; }