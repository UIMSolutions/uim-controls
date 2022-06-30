module uim.controls.empties.icon;

@safe: 
import uim.controls;

class DUIMEmptyIconControl : DUIMEmptyItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-icon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMEmptyIconControl() { return new DUIMEmptyIconControl; }
