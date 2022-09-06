module  uim.controls.lists.items.entity;

@safe: 
import uim.controls;

class DUIMEntityListItemControl : DUIMListItemControl {
  mixin(ControlThis!("UIMEntityListItemControl"));

  mixin(OProperty!("DOOPEntity", "entity"));
  mixin(OProperty!("string", "rootPath"));

  override void initialize() {
    super.initialize;

    this
      .classes("list-item-entity");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [BS5ListItem(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEntityListItemControl", "DUIMEntityListItemControl"));
mixin(ControlCalls!("UIMEntityListItem", "DUIMEntityListItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMEntityListItem);
  assert(UIMEntityListItem.noId == `<li class="list-item-entity"></li>`);
}}
