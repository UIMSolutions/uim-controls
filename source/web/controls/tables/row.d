module uim.controls.tables.row;

@safe: 
import uim.controls;

class DUIMTableRowControl : DUIMControl {
  mixin(ControlThis!("UIMTableRow"));

  override void initialize() {
    super.initialize;

    this
      .classes("table-row");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {    
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTableRowControl", "DUIMTableRowControl"));
mixin(ControlCalls!("UIMTableRow", "DUIMTableRowControl"));

version(test_uim_controls) { unittest {
  assert(UIMTableRow);
  assert(UIMTableRow.noId == `<div class="table-row"></div>`);
}}