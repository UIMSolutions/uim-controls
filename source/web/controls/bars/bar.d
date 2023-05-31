module web.controls.bars.bar;

@safe:
import web.controls;

class DUIMBarControl : DUIMDivControl {
  mixin(ControlThis!("UIMBarControl"));
  
  override void initialize() {
    super.initialize;

    this
      .classes("bar");
  }

  // Determines the design of the bar. If set to auto, it becomes dependent on the place where the bar is placed.
  mixin(OProperty!("UIMBarDesigns", "design")); // Default Auto

  // Specifies the Title alignment (theme specific). If set to TitleAlignment.None, the automatic title alignment depending on the theme settings will be disabled. If set to TitleAlignment.Auto, the Title will be aligned as it is set in the theme (if not set, the default value is center); Other possible values are TitleAlignment.Start (left or right depending on LTR/RTL), and TitleAlignment.Center (centered)
  mixin(OProperty!("UIMTitleAlignments", "titleAlignment")); // Default None

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMBarControl", "DUIMBarControl"));
mixin(ControlCalls!("UIMBar", "DUIMBarControl"));

version(test_uim_controls) { unittest {
  assert(UIMBar);
  assert(UIMBar == `<div class="bar"></div>`);
}}
