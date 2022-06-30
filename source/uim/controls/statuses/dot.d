module uim.controls.statuses.dot;

@safe: 
import uim.controls;

class DUIMStatusDotControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "animated"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["status-dot"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (animated) { myClasses ~= ["status-dot-animated"]; }
    if (color) { myClasses ~= ["status-"~color]; }

    if (tooltip) { myAttributes["title"] = tooltip; }

    return results~
      BS5StatusDot(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMStatusDotControl() { return new DUIMStatusDotControl; }