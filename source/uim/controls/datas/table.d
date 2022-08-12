module uim.controls.datas.table;

@safe: 
import uim.controls;

class DUIMDataTableControl : DUIMControl {
  mixin(ControlThis!("UIMDataTableControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
         H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMDataTableControl", "DUIMDataTableControl"));
mixin(ControlCalls!("UIMDataTable", "DUIMDataTableControl"));

version(test_uim_controls) { unittest {
    assert(UIMDataTable);

    auto control = UIMDataTable;
    // TODO
  }
}