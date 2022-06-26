module uim.controls.buttonlist;

@safe:
Import uim.controls;

class DUIMButtonListControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

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
auto UIMButtonListControl() { return new DUIMButtonListControl; }
