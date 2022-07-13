module uim.controls.empties.item;

@safe: 
import uim.controls;

class DUIMEmptyItemControl : DUIMControl {
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
mixin(ControlCalls!("UIMEmptyItemControl", "DUIMEmptyItemControl"));
mixin(ControlCalls!("UIMEmptyItem", "DUIMEmptyItemControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMEmptyItem);

    auto control = UIMEmptyItem;
    // TODO
  }
}