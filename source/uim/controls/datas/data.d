module uim.controls.datas.data;

@safe: 
import uim.controls;

class DUIMDataControl : DUIMControl {
  mixin(ControlThis!("UIMDataControl"));

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
mixin(ControlCalls!("UIMDataControl", "DUIMDataControl"));
mixin(ControlCalls!("UIMData", "DUIMDataControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMData);

    auto control = UIMData;
    // TODO
  }
}