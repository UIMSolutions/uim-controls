module uim.controls.tooltips.tooltip;

@safe: 
import uim.controls;

class DUIMTooltipControl : DUIMControl {
  mixin(ControlThis!("UIMTooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes("tooltip");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTooltipControl", "DUIMTooltipControl"));
mixin(ControlCalls!("UIMTooltip", "DUIMTooltipControl"));

version(test_uim_controls) { unittest {
  assert(UIMTooltip);
  assert(UIMTooltip.noId == `<div class="tooltip"></div>`);
}}
