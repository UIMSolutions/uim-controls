module uim.controls.tabs.tab;

@safe: 
import uim.controls;

class DUIMTabControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMTabControl() { return new DUIMTabControl; }