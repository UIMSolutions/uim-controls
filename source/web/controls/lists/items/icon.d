module web.controls.lists.items.icon;

@safe: 
import web.controls;

// Simple listitem with a Icon at start or end or both. 
class DUIMIconListItemControl : DUIMControl {
  mixin(ControlThis!("UIMIconListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMIconListItemControl", "DUIMIconListItemControl"));
mixin(ControlCalls!("UIMIconListItem", "DUIMIconListItemControl"));
