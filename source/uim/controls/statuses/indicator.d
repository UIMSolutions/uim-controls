module uim.controls.statuses.indicator;

@safe: 
import uim.controls;

class DUIMStatusIndicatorControl : DUIMControl {
  mixin(ControlThis!("UIMStatusIndicator"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "animated"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["status-indicator"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (animated) myClasses ~= "status-indicator-animated";
    if (color)    myClasses ~= "status-"~color;
    if (tooltip)  myAttributes["title"] = tooltip;
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
    
    return [BS5StatusIndicator(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMStatusIndicatorControl", "DUIMStatusIndicatorControl"));
mixin(ControlCalls!("UIMStatusIndicator", "DUIMStatusIndicatorControl"));

version(test_uim_controls) { unittest {
  assert(UIMStatusIndicator);
  assert(UIMStatusIndicator.noId == `<span class="status-indicator"><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span><span class="status-indicator-circle"></span></span>`);
}}