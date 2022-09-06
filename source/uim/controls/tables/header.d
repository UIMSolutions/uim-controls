module uim.controls.tables.header;

@safe: 
import uim.controls;

class DUIMTableHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMTableHeader"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Thead(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTableHeaderControl", "DUIMTableHeaderControl")); 
mixin(ControlCalls!("UIMTableHeader", "DUIMTableHeaderControl")); 

version(test_uim_controls) { unittest {
    assert(UIMTableHeader);

    auto control = UIMTableHeader;
  }
}
