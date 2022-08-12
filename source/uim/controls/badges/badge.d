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
    DH5Obj[] results = super.toH5(options);
    
    return results~
      (link  ? H5A(myId, myClasses, myAttributes, myContent)
             : H5Span(myId, myClasses, myAttributes, myContent));
  }
}
mixin(ControlCalls!("UIMBadgeControl", "DUIMBadgeControl"));
mixin(ControlCalls!("UIMBadge", "DUIMBadgeControl"));

version(test_uim_controls) { unittest {
    assert(UIMBadge);
    assert(UIMBadge.id("test1") == `<span id="test2" class="badge"></span>`);

    assert(UIMBadge.color("green").color == "green");
    assert(UIMBadge.id("test2").color("yellow") == `<span id="test2" class="badge bg-yellow"></span>`);

    assert(UIMBadge.link("somewhere/link.html").link == "somewhere/link.html");
    assert(UIMBadge.id("test3").link("somewhere/link.html") == `<a id="test3" class="badge" href="somewhere/link.html"></a>`);

    assert(UIMBadge.outline(true).outline);
    assert(UIMBadge.id("test4").outline(true) == `<span id="test4" class="badge badge-outline"></span>`);

    assert(UIMBadge.style("testStyle"));
    assert(UIMBadge.id("test5").style("pill") == `<span id="test5" class="badge badge-pill"></span>`);
  }
}

