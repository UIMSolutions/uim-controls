module uim.controls.empties.header;

@safe: 
import uim.controls;

class DUIMEmptyHeaderControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-header"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyHeaderControl", "DUIMEmptyHeaderControl"));
mixin(ControlCalls!("UIMEmptyHeader", "DUIMEmptyHeaderControl"));

unittest {
  assert(UIMEmptyHeader);
  assert(UIMEmptyHeader.id(null) == `<div class="empty-header"></div>`);
}