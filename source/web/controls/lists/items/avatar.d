module uim.controls.lists.items.avatar;

@safe: 
import uim.controls;

// Simple listitem with a avatar at start or end or both. 
class DUIMAvatarListItemControl : DUIMListItemControl {
  mixin(ControlThis!("UIMAvatarListItemControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("list-group-avatar");
  }
}
mixin(ControlCalls!("UIMAvatarListItemControl", "DUIMAvatarListItemControl"));
mixin(ControlCalls!("UIMAvatarListItem", "DUIMAvatarListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMAvatarListItem);
  assert(UIMAvatarListItem.noId == `<li class="list-group-avatar list-group-item"></li>`); 
}}