module uim.controls.bars.bar;

@safe:
import uim.controls;

class DUIMBarControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
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
auto UIMBarControl() { return new DUIMBarControl; }
auto UIMBar() { return UIMBarControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
