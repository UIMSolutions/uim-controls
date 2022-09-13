module uim.controls.lists.list;

@safe: 
import uim.controls;

class DUIMListControl : DUIMControl {
  mixin(ControlThis!("UIMListControl"));

  // List could be build of three types: 
  // list -> ul & li - that is the standard  
  // link -> div & a
  // button -> div & button
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "horizontal"));
  // Flush removes some borders and rounded corners to render list group items edge-to-edge in a parent container (e.g., cards).
  mixin(OProperty!("bool", "flush"));
  mixin(OProperty!("bool", "numbered"));
  
  mixin(OProperty!("DUIMListItemControl[]", "items"));
  O items(this O)(DUIMListItemControl[] newItems...) {
    this.items(newItems.dup);
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this  
      .classes("list-group")
      .type("list");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (flush) myClasses ~= "list-group-flush";
    if (numbered) myClasses ~= "list-group-numbered";
    if (horizontal) myClasses ~= horizontal != "all" ? "list-group-horizontal-"~this.horizontal : "list-group-horizontal";

    if (items.length > 0) {
      myContent ~= this.items.toH5;
    }

    switch (type) {
      case "div": return [
          H5Div(myId, myClasses, myAttributes, myContent)].toH5;
      case "link": return [
          BS5ListGroup(myId, myClasses, myAttributes, myContent)].toH5;
      case "button": return [
          BS5ListGroup(myId, myClasses, myAttributes, myContent)].toH5;
      default: 
        if (numbered)
          return [H5Ol(myId, myClasses, myAttributes, myContent)].toH5;
        return [BS5List(myId, myClasses, myAttributes, myContent)].toH5;
    }
  }
}
mixin(ControlCalls!("UIMListControl", "DUIMListControl"));
mixin(ControlCalls!("UIMList", "DUIMListControl"));

version(test_uim_controls) { unittest {
  assert(UIMList);
  assert(UIMList.noId == `<ul class="list-group"></ul>`);
  assert(UIMList.noId.type("div") == `<div class="list-group"></div>`);
}}
