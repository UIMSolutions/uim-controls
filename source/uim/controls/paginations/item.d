module uim.controls.paginations.item;

@safe:
import uim.controls;

class DUIMPageItemControl : DUIMControl {
  mixin(ControlThis!("UIMPageItemControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
mixin(ControlCalls!("UIMPageItemControl", "DUIMPageItemControl"));
mixin(ControlCalls!("UIMPageItem", "DUIMPageItemControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}

