module uim.controls.spinners.spinner;

@safe: 
import uim.controls;

class DUIMSpinnerControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMSpinnerControl() { return new DUIMSpinnerControl; }