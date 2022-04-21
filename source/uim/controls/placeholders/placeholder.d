module uim.controls.placeholders.placeholder;

@safe: 
import uim.controls;

class DUIMPlaceHolderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMPlaceHolderControl() { return new DUIMPlaceHolderControl; }