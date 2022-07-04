module uim.controls.empties.title;

@safe: 
import uim.controls;

class DUIMEmptyTitleControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyTitleControl"));

  override void initialize() {
    super.initialize;


    this
      .classes(["empty-title"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5P(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyTitleControl", "DUIMEmptyTitleControl"));
mixin(ControlCalls!("UIMEmptyTitle", "DUIMEmptyTitleControl"));
