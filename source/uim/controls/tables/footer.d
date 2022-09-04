module uim.controls.tables.footer;

@safe: 
import uim.controls;

class DUIMTableFooterControl : DUIMControl {
  mixin(ControlThis!("UIMTableFooter"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;

    this
      .classes("table-foot");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Tfoot(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTableFooterControl", "DUIMTableFooterControl")); 
mixin(ControlCalls!("UIMTableFooter", "DUIMTableFooterControl")); 

version(test_uim_controls) { unittest {
    assert(UIMTableFooter);
    assert(UIMTableFooter.noId == `<tfoot class="table-foot"></tfoot>`;
  }
}
