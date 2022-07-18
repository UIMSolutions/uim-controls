module uim.controls.tables.body_;

@safe: 
import uim.controls;

class DUIMTableBodyControl : DUIMControl {
  mixin(ControlThis!("UIMTableBody"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Tbody(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTableBodyControl", "DUIMTableBodyControl")); 
mixin(ControlCalls!("UIMTableBody", "DUIMTableBodyControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTableBody);

    auto control = UIMTableBody;
  }
}
