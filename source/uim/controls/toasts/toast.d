module uim.controls.toasts.toast;

@safe: 
import uim.controls;

class DUIMToastControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMToastControl() { return new DUIMToastControl; }