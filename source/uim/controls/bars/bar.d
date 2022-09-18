module uim.controls.bars.bar;

@safe:
import uim.controls;

class DUIMBarControl : DUIMControl {
  mixin(ControlThis!("UIMBarControl"));
  
  override void initialize() {
    super.initialize;
  }

  // Determines the design of the bar. If set to auto, it becomes dependent on the place where the bar is placed.
  mixin(OProperty!("UIMBarDesigns", "design")); // DEfault Auto

  // Specifies the Title alignment (theme specific). If set to TitleAlignment.None, the automatic title alignment depending on the theme settings will be disabled. If set to TitleAlignment.Auto, the Title will be aligned as it is set in the theme (if not set, the default value is center); Other possible values are TitleAlignment.Start (left or right depending on LTR/RTL), and TitleAlignment.Center (centered)
  mixin(OProperty!("UIMTitleAlignments", "titleAlignment")); // Default None

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
    
    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMBarControl", "DUIMBarControl"));
mixin(ControlCalls!("UIMBar", "DUIMBarControl"));

version(test_uim_controls) { unittest {
    assert(UIMBar);
  }
}
