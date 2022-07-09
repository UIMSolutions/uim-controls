module uim.controls.lists.items.badge;

@safe: 
import uim.controls;

// Simple listitem with a badge at start or end or both. 
class DUIMBadgeListItemControl : DUIMContainerControl {
  mixin(ControlThis!("UIMBadgeListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMBadgeListItemControl", "DUIMBadgeListItemControl"));
mixin(ControlCalls!("UIMBadgeListItem", "DUIMBadgeListItemControl"));
