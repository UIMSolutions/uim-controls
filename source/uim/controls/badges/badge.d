module uim.controls.badges.badge;

@safe: 
import uim.controls;

class DUIMBadgeControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "bgColor"));
  mixin(OProperty!("bool", "outline"));
  O toggleOutline(this O)() {
    this.outline(!outline);
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["badge"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (bgColor || "badgeBackgroundColor" in options) { bufClasses ~= "bg-"~options.get("badgeBackgroundColor", this.bgColor); }
    
    results ~= H5Span(bufId, bufClasses, bufAttributes, content);    
    return results;
  }
}
auto UIMBadgeControl() { return new DUIMBadgeControl; }