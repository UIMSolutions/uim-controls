module uim.controls.empties.header;

@safe: 
import uim.controls;

class DUIMEmptyHeaderControl : DUIMEmptyItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-header"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMEmptyHeaderControl() { return new DUIMEmptyHeaderControl; }
