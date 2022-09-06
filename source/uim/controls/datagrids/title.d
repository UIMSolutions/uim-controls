module uim.controls.datagrids.title;

@safe: 
import uim.controls;

class DUIMDatagridTitleControl : DUIMControl {
  mixin(ControlThis!("UIMDatagridTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid-title"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return results;  
  }
}
mixin(ControlCalls!("UIMDatagridTitleControl", "DUIMDatagridTitleControl"));
mixin(ControlCalls!("UIMDatagridTitle", "DUIMDatagridTitleControl"));

version(test_uim_controls) { unittest {
    assert(UIMDatagridTitle);

    auto control = UIMDatagridTitle;
  }
}
