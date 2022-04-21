module uim.controls.empties.title;

@safe: 
import uim.controls;

class DUIMEmptyTitleControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptyTitleControl() { return new DUIMEmptyTitleControl; }