module  uim.controls.lists.items.item;

@safe: 
import uim.controls;

class DUIMListItemControl : DUIMControl {
  mixin(ControlThis!("UIMListItemControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "list-group-item-"~color.toLower;
    if (link) myAttributes["href"] = link;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (auto list = cast(DUIMListControl)parent) {
      switch (list.type) {
        case "link": 
          return results~
            BS5ListLink(myId, myClasses, myAttributes, myContent);
        case "button": 
          return results~
            BS5ListButton(myId, myClasses, myAttributes, myContent);
        default: 
          return results~
            BS5ListItem(myId, myClasses, myAttributes, myContent);
      }
    }
    if (link) {
      return results~
            BS5ListLink(myId, myClasses, myAttributes, myContent);
    }
    return results~
      BS5ListItem(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMListItemControl", "DUIMListItemControl"));
mixin(ControlCalls!("UIMListItem", "DUIMListItemControl"));
