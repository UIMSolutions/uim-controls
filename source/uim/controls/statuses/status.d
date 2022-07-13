module uim.controls.statuses.status;

@safe: 
import uim.controls;

class DUIMStatusControl : DUIMControl {
  mixin(ControlThis!("UIMStatus"));

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
    auto results = super.toH5(options);

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
    return results~
      BS5Status(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMStatusControl", "DUIMStatusControl"));
mixin(ControlCalls!("UIMStatus", "DUIMStatusControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMStatus);

    auto control = UIMStatus;
    // TODO
  }
}
