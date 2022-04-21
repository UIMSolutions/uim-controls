module uim.controls.ribbons.ribbon;

@safe: 
import uim.controls;

class DUIMRibbonControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMRibbonControl() { return new DUIMRibbonControl; }