module uim.controls.tables.table;

@safe: 
import uim.controls;

class DUIMTableControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMTableControl() { return new DUIMTableControl; }