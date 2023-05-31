module  web.controls.lists.items.item;

@safe: 
import web.controls;

interface IListItem {
}

class DUIMListItemControl : DUIMControl {
  mixin(ControlThis!("UIMListItemControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "type"));

  override void initialize() {
    super.initialize;

    this
      .classes("list-group-item");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "list-group-item-"~color.toLower;
    if (link) myAttributes["href"] = link;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    string myType;
    if (auto list = cast(DUIMListControl)parent)  myType = list.type;
    if (this.type) myType = this.type;

    switch (myType) {
      case "div": 
        return [
          H5Div(myId, myClasses, myAttributes, myContent)].toH5;        
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
/*     if (link) {
      return [
        BS5ListLink(myId, myClasses, myAttributes, myContent)].toH5;
    }
    return [
      BS5ListItem(myId, myClasses, myAttributes, myContent)].toH5; */
  }
}
mixin(ControlCalls!("UIMListItemControl", "DUIMListItemControl"));
mixin(ControlCalls!("UIMListItem", "DUIMListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMListItem);
  assert(UIMListItem.noId == `<li class="list-group-item"></li>`);
  assert(UIMListItem.noId.type("div") == `<div class="list-group-item"></div>`);
}}