module uim.controls.tables.row;

@safe: 
import uim.controls;

class DUIMTableRowControl : DUIMControl {
  mixin(ControlThis!("UIMTableRow"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTableRowControl", "DUIMTableRowControl"));
mixin(ControlCalls!("UIMTableRow", "DUIMTableRowControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTableRow);

    auto control = UIMTableRow;
    // TODO
  }
}