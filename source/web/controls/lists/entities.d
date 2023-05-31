module web.controls.lists.entities;

@safe: 
import web.controls;

class DUIMEntitiesListControl : DUIMListControl {
  mixin(ControlThis!("UIMEntitiesListControl"));

  mixin(OProperty!("DEntity[]", "entities"));
  mixin(OProperty!("DUIMEntityListItemControl", "templateControl"));

  override void initialize() {
    super.initialize;

    this
      .templateControl(UIMEntityListItem)
      .addClasses("list-group-entities");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (auto itemControl = cast(DUIMEntityListItemControl)templateControl) {
      myContent = entities.map!(entity => itemControl.entity(entity).toH5(options)).join;
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Ul(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEntitiesListControl", "DUIMEntitiesListControl"));
mixin(ControlCalls!("UIMEntitiesList", "DUIMEntitiesListControl"));

version(test_uim_controls) { unittest {
  assert(UIMEntitiesList);
  assert(UIMEntitiesList.noId == `<ul class="list-group list-group-entities"></ul>`);
}}
