module uim.controls.empties.action;

@safe: 
import uim.controls;

class DUIMEmptyActionControl : DUIMEmptyItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-action"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMEmptyActionControl() { return new DUIMEmptyActionControl; }
