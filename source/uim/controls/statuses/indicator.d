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

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto myIndicator = BS5StatusIndicator;
    if (id) myIndicator.id(id);
    if (animated) { myIndicator.animated; }
    if (color) { myIndicator.color(color); }    

    if (tooltip) { myIndicator.attribute("title", tooltip); }

    return results~
      myIndicator;
  }
}
mixin(ControlCalls!("UIMStatusIndicatorControl", "DUIMStatusIndicatorControl"));
mixin(ControlCalls!("UIMStatusIndicator", "DUIMStatusIndicatorControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMStatusIndicator);

    auto control = UIMStatusIndicator;
    // TODO
  }
}