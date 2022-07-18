module uim.controls.tables.footer;

@safe: 
import uim.controls;

class DUIMTableFooterControl : DUIMControl {
  mixin(ControlThis!("UIMTableFooter"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Tfoot(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTableFooterControl", "DUIMTableFooterControl")); 
mixin(ControlCalls!("UIMTableFooter", "DUIMTableFooterControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTableFooter);

    auto control = UIMTableFooter;
  }
}
