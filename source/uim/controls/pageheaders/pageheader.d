module uim.controls.pageheaders.pageheader;

@safe: 
import uim.controls;

class DUIMPageHeaderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMPageHeaderControl() { return new DUIMPageHeaderControl; }