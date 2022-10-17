module uim.controls.dividers.divider;

@safe: 
import uim.controls;

class DUIMDividerControl : DUIMDivControl {
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
}
mixin(ControlCalls!("UIMDividerControl", "DUIMDividerControl"));
mixin(ControlCalls!("UIMDivider", "DUIMDividerControl"));

version(test_uim_controls) { unittest {
    assert(UIMDivider);

    assert(UIMDivider.noId == `<div class="hr-text"></div>`);

    assert(UIMDivider.position("left").position == "left");
    assert(UIMDivider.noId.position("right") == `<div class="hr-text hr-text-right"></div>`);

    assert(UIMDivider.color("blue").color == "blue");
    assert(UIMDivider.noId.color("red") == `<div class="hr-text text-red"></div>`);
  }
}
