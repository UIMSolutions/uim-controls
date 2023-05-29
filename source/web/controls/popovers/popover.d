module uim.controls.popovers.popover;

@safe:
import uim.controls;

class DUIMPopoverControl : DUIMControl {
  mixin(ControlThis!("UIMPopoverControl"));

  override void initialize() {
    super.initialize;
    
    this
      .classes("popover");
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
mixin(ControlCalls!("UIMPopoverControl", "DUIMPopoverControl"));
mixin(ControlCalls!("UIMPopover", "DUIMPopoverControl"));

version(test_uim_controls) { unittest {
  assert(UIMPopover);
  assert(UIMPopover.noId == `<div class="popover"></div>`);
}}
