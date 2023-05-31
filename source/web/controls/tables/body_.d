module web.controls.tables.body_;

@safe: 
import web.controls;

class DUIMTableBodyControl : DUIMControl {
  mixin(ControlThis!("UIMTableBody"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;

    this
      .classes("table-body");
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Tbody(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTableBodyControl", "DUIMTableBodyControl")); 
mixin(ControlCalls!("UIMTableBody", "DUIMTableBodyControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTableBody);
  assert(UIMTableBody.noId == `<tbody class="table-body"></tbody>`);
}}
