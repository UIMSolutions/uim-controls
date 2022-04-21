module uim.controls.progresses.progress;

@safe: 
import uim.controls;

class DUIMProgressControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMProgressControl() { return new DUIMProgressControl; }