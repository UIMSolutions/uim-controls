module uim.controls.badges.badge;

@safe: 
import uim.controls;

class DUIMBadgeControl : DUIMControl {
  mixin(ControlThis!("UIMBadgeControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("bool", "outline"));
  mixin(OProperty!("string", "style"));
  
  O toggleOutline(this O)() {
    this.outline(!outline);
    return cast(O)this;
  }

  O value(this O)(string newValue) {
    content(newValue);
    return cast(O)this;
  }
  O value(this O)(int newValue) {
    content(to!string(newValue));
    return cast(O)this;
  }
  O value(this O)(double newValue) {
    content(to!string(newValue));
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["badge"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color && !outline) { myClasses ~= "bg-"~this.color; }
    if (color && outline) { myClasses ~= ["text-"~this.color, "badge-outline"]; }
    if (style) { myClasses ~= "badge-"~style; }
    if (outline) { myClasses ~= "badge-outline"; }
    if (link) { myAttributes["href"] = link; }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
    
    return [
      (link  ? H5A(myId, myClasses, myAttributes, myContent)
             : H5Span(myId, myClasses, myAttributes, myContent))].toH5;
  }
}
mixin(ControlCalls!("UIMBadgeControl", "DUIMBadgeControl"));
mixin(ControlCalls!("UIMBadge", "DUIMBadgeControl"));

version(test_uim_controls) { unittest {
    assert(UIMBadge);
    assert(UIMBadge.noId == `<span class="badge"></span>`);

    mixin(TestControlBooleanAttributes!("UIMBadge", [
      "outline"
    ]));

    mixin(TestControlStringAttributes!("UIMBadge", [
      "color", "link", "style"
    ]));

    assert(UIMBadge.noId.color("yellow") == `<span class="badge bg-yellow"></span>`);
    assert(UIMBadge.noId.link("somewhere/link.html") == `<a class="badge" href="somewhere/link.html"></a>`);
    assert(UIMBadge.noId.outline(true) == `<span class="badge badge-outline"></span>`);
    assert(UIMBadge.noId.style("pill") == `<span class="badge badge-pill"></span>`);
  }
}

