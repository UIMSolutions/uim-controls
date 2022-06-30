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
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMEmptyIconControl() { return new DUIMEmptyIconControl; }
