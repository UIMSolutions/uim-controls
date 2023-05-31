module web.controls.statuses.dot;

@safe: 
import web.controls;

class DUIMStatusDotControl : DUIMControl {
  mixin(ControlThis!("UIMStatusDot"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "animated"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["status-dot"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (animated) { myClasses ~= ["status-dot-animated"]; }
    if (color) { myClasses ~= ["status-"~color]; }

    if (tooltip) { myAttributes["title"] = tooltip; }

    return [BS5StatusDot(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMStatusDotControl", "DUIMStatusDotControl"));
mixin(ControlCalls!("UIMStatusDot", "DUIMStatusDotControl"));

version(test_uim_controls) { unittest {
    assert(UIMStatusDot);
    assert(UIMStatusDot.noId == `<span class="status-dot"></span>`);
}}