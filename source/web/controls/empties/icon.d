module web.controls.empties.icon;

@safe: 
import web.controls;

class DUIMEmptyIconControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-icon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyIconControl", "DUIMEmptyIconControl"));
mixin(ControlCalls!("UIMEmptyIcon", "DUIMEmptyIconControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmptyIcon);
  assert(UIMEmptyIcon.id(null) == `<div class="empty-icon"></div>`);
}}
