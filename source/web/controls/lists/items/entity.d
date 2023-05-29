module  uim.controls.lists.items.entity;

@safe: 
import uim.controls;

class DUIMEntityListItemControl : DUIMListItemControl {
  mixin(ControlThis!("UIMEntityListItemControl"));

  mixin(OProperty!("DEntity", "entity"));
  mixin(OProperty!("string", "rootPath"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("list-group-entity");
  }
}
mixin(ControlCalls!("UIMEntityListItemControl", "DUIMEntityListItemControl"));
mixin(ControlCalls!("UIMEntityListItem", "DUIMEntityListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMEntityListItem);
  assert(UIMEntityListItem.noId == `<li class="list-group-entity list-group-item"></li>`);
}}
