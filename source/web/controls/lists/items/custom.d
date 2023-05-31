module web.controls.lists.items.custom;

@safe: 
import web.controls;

class DUIMCustomListItemControl : DUIMControl {
  mixin(ControlThis!("UIMCustomListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMCustomListItemControl", "DUIMCustomListItemControl"));
mixin(ControlCalls!("UIMCustomListItem", "DUIMCustomListItemControl"));
