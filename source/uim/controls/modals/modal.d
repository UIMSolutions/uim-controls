module uim.controls.modals.modal;

@safe: 
import uim.controls;

class DUIMModalControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMModalControl() { return new DUIMModalControl; }