module uim.controls.lists.list;

@safe: 
import uim.controls;

class DUIMListControl : DUIMContainerControl {
  mixin(ControlThis!("UIMListControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5List(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMListControl", "DUIMListControl"));
mixin(ControlCalls!("UIMList", "DUIMListControl"));
