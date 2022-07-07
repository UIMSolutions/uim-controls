module  uim.controls.lists.items.item;

@safe: 
import uim.controls;

class DUIMListItemControl : DUIMContainerControl {
  mixin(ControlThis!("UIMListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5ListItem(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMListItemControl", "DUIMListItemControl"));
mixin(ControlCalls!("UIMListItem", "DUIMListItemControl"));
