module uim.controls.datagrids.datagrid;

@safe: 
import uim.controls;

class DUIMDatagridControl : DUIMControl {
  mixin(ControlThis!("UIMDatagridControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;  
  }
}
mixin(ControlCalls!("UIMDatagridControl", "DUIMDatagridControl"));
mixin(ControlCalls!("UIMDatagrid", "DUIMDatagridControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDatagrid);

    auto control = UIMDatagrid;
  }
}