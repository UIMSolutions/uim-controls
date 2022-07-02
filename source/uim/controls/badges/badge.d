module uim.controls.badges.badge;

@safe: 
import uim.controls;

class DUIMBadgeControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("bool", "outline"));
  mixin(OProperty!("string", "style"));
  
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

    if (color && !outline) { myClasses ~= "bg-"~this.color; }
    if (color && outline) { myClasses ~= ["text-"~this.color, "badge-outline"]; }
    if (style) { myClasses ~= "badge-"~style; }
    
    if (link) { myAttributes["href"] = link; }
    return results~
      (link  ? H5A(myId, myClasses, myAttributes, myContent)
             : H5Span(myId, myClasses, myAttributes, myContent));
  }
}
auto UIMBadgeControl() { return new DUIMBadgeControl; }
auto UIMBadge() { return new DUIMBadgeControl; }

version(test_uim_controls) {
  unittest {
  }
}
