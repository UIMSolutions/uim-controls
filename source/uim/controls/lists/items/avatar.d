module uim.controls.lists.items.avatar;

@safe: 
import uim.controls;

// Simple listitem with a avatar at start or end or both. 
class DUIMAvatarListItemControl : DUIMControl {
  mixin(ControlThis!("UIMAvatarListItemControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return super.toH5(options);
  }
}
mixin(ControlCalls!("UIMAvatarListItemControl", "DUIMAvatarListItemControl"));
mixin(ControlCalls!("UIMAvatarListItem", "DUIMAvatarListItemControl"));
