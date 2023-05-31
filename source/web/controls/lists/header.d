module web.controls.lists.header;

@safe: 
import web.controls;

class DUIMListHeaderControl : DUIMListControl {
  mixin(ControlThis!("UIMListHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("list-group-header");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMListHeaderControl", "DUIMListHeaderControl"));
mixin(ControlCalls!("UIMListHeader", "DUIMListHeaderControl"));

version(test_uim_controls) { unittest {
  assert(UIMListHeader);
  assert(UIMListHeader.noId == `<div class="list-group-header"></div>`);
}}
