module uim.controls.statuses.status;

@safe: 
import uim.controls;

class DUIMStatusControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "dot"));
  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "tooltip"));

  mixin(OProperty!("bool", "animated"));
  mixin(OProperty!("bool", "lite"));

  override void initialize() {
    super.initialize;

    this
      .classes(["status"])
      .position("left");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    if (color) { myClasses ~= ["status-"~color]; }
    if (lite) { myClasses ~= ["status-lite"]; }
    
    if (tooltip) { myAttributes["title"] = tooltip; }

    if (dot) {
      auto myDot = BS5StatusDot.animated(animated);
      switch(position) {
        case "right": myContent ~= myDot; break;
        case "leftAndRight": myContent = myDot~myContent~myDot; break;
        default: myContent = myDot~myContent; break;
      }
    }
    return [
      BS5Status(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMStatusControl() { return new DUIMStatusControl; }