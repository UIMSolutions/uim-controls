module uim.controls.dividers.divider;

@safe: 
import uim.controls;

class DUIMDividerControl : DUIMControl {
  mixin(ControlThis!("UIMDividerControl"));

  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "color"));

  override void initialize() {
    super.initialize;

    this
      .classes(["hr-text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (position) myClasses ~= "hr-text-"~position;
    if (color) myClasses ~= "text-"~color;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMDividerControl", "DUIMDividerControl"));
mixin(ControlCalls!("UIMDivider", "DUIMDividerControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDivider);

    assert(UIMDivider.id("test1") == `<div id="test1" class="hr-text"></div>`);

    assert(UIMDivider.position("left").position == "left");
    assert(UIMDivider.id("test2").position("right") == `<div id="test2" class="hr-text hr-text-right"></div>`);

    assert(UIMDivider.color("blue").color == "blue");
    assert(UIMDivider.id("test3").color("red") == `<div id="test3" class="hr-text text-red"></div>`);
  }
}
