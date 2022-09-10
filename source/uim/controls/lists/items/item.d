module  uim.controls.lists.items.item;

@safe: 
import uim.controls;

interface IListItem {
}

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
    super.toH5(options);

    if (auto list = cast(DUIMListControl)parent) {
      switch (list.type) {
        case "link": 
          return [
            BS5ListLink(myId, myClasses, myAttributes, myContent)].toH5;
        case "button": 
          return [
            BS5ListButton(myId, myClasses, myAttributes, myContent)].toH5;
        default: 
          return [
            BS5ListItem(myId, myClasses, myAttributes, myContent)].toH5;
      }
    }
    if (link) {
      return [
        BS5ListLink(myId, myClasses, myAttributes, myContent)].toH5;
    }
    return [
      BS5ListItem(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMListItemControl", "DUIMListItemControl"));
mixin(ControlCalls!("UIMListItem", "DUIMListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMListItem);
  assert(UIMListItem.noId == `<li class="list-group-item"></li>`);
}}