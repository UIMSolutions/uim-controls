module uim.controls.tables.table;

@safe: 
import uim.controls;

class DUIMTableControl : DUIMControl {
  mixin(ControlThis!("UIMTable"));

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
mixin(ControlCalls!("UIMTableControl", "DUIMTableControl"));
mixin(ControlCalls!("UIMTable", "DUIMTableControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTable);

    auto control = UIMTable;
    // TODO
  }
}