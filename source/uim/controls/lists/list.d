module uim.controls.lists.list;

@safe: 
import uim.controls;

class DUIMListControl : DUIMContainerControl {
  mixin(ControlThis!("UIMListControl"));

  mixin(OProperty!("DUIMListItemControl", "templateControl"));

  override void initialize() {
    super.initialize;

    this  
      .templateControl(UIMListItemControl);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5List(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMListControl", "DUIMListControl"));
mixin(ControlCalls!("UIMList", "DUIMListControl"));
