module uim.controls.columns.column;

@safe: 
import uim.controls;

class DUIMColumnDividerControl : DUIMColumnItemControl {
  mixin(ControlThis!("UIMColumnDividerControl"));

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
mixin(ControlCalls!("UIMColumnDividerControl", "DUIMColumnDividerControl"));
mixin(ControlCalls!("UIMColumnDivider", "DUIMColumnDividerControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMColumn);

    auto control = UIMColumn;
  }
}