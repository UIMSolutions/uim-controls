module uim.controls.tooltips.tooltip;

@safe: 
import uim.controls;

class DUIMTooltipControl : DUIMControl {
  mixin(ControlThis!("UIMTooltip"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTooltipControl", "DUIMTooltipControl"));
mixin(ControlCalls!("UIMTooltip", "DUIMTooltipControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTooltip);

    auto control = UIMTooltip;
    // TODO
  }
}
