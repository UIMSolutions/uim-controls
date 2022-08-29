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
    auto results = super.toH5(options);

    if (flush) myClasses ~= "list-group-flush";
    if (numbered) myClasses ~= "list-group-numbered";
    if (horizontal) myClasses ~= horizontal != "all" ? "list-group-horizontal-"~this.horizontal : "list-group-horizontal";

    if (items.length > 0) {
      myContent ~= this.items.toH5;
    }

    switch (type) {
      case "link": 
        return results~
          BS5ListGroup(myId, myClasses, myAttributes, myContent);
      case "button": 
        return results~
          BS5ListGroup(myId, myClasses, myAttributes, myContent);
      default: 
        if (numbered)
          return results~
            H5Ol(myId, myClasses, myAttributes, myContent);
        return results~
          BS5List(myId, myClasses, myAttributes, myContent);
    }
  }
}
mixin(ControlCalls!("UIMListControl", "DUIMListControl"));
mixin(ControlCalls!("UIMList", "DUIMListControl"));
