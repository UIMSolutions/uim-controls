module uim.controls.statuses.indicator;

@safe: 
import uim.controls;

class DUIMStatusIndicatorControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "animated"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["status-indicator"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto myIndicator = BS5StatusIndicator;
    if (id) myIndicator.id(id);
    if (animated) { myIndicator.animated; }
    if (color) { myIndicator.color(color); }    

    if (tooltip) { myIndicator.attribute("title", tooltip); }

    return [myIndicator].toH5;
  }
}
auto UIMStatusIndicatorControl() { return new DUIMStatusIndicatorControl; }