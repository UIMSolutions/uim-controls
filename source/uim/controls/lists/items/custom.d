module uim.controls.lists.items.custom;

@safe: 
import uim.controls;

class DUIMCustomListitemControl : DUIMContainerControl {
  mixin(ControlThis!("UIMCustomListitemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMCustomListitemControl", "DUIMCustomListitemControl"));
mixin(ControlCalls!("UIMCustomListitem", "DUIMCustomListitemControl"));
