module uim.controls.empties.image;

@safe: 
import uim.controls;

class DUIMEmptyImageControl : DUIMEmptyItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;


    this
      .classes(["empty-image"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMEmptyImageControl() { return new DUIMEmptyImageControl; }
