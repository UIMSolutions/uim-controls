module uim.controls.tables.table;

@safe: 
import uim.controls;

class DUIMTableControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMTableControl() { return new DUIMTableControl; }
auto UIMTable() { return new DUIMTableControl; }