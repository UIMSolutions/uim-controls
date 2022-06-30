module uim.controls.tables.header;

@safe: 
import uim.controls;

class DUIMTableRowControl : DUIMControl {
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
auto UIMTableRowControl() { return new DUIMTableRowControl; }