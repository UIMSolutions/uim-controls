module  uim.controls.lists.items.entity;

@safe: 
import uim.controls;

class DUIMListEntityControl : DUIMListItemControl {
  // mixin(ControlThis!("UIMListEntityControl"));

  mixin(OProperty!("DOOPEntity", "entity"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5ListItem(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMListEntityControl", "DUIMListEntityControl"));
mixin(ControlCalls!("UIMListItem", "DUIMListEntityControl"));
