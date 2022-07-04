module uim.controls.empties.icon;

@safe: 
import uim.controls;

class DUIMEmptyIconControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-icon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyIconControl", "DUIMEmptyIconControl"));
mixin(ControlCalls!("UIMEmptyIcon", "DUIMEmptyIconControl"));
