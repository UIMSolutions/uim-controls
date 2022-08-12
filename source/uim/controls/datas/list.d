module uim.controls.datas.list;

@safe: 
import uim.controls;

class DUIMDataListControl : DUIMControl {
  mixin(ControlThis!("UIMDataListControl"));

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
mixin(ControlCalls!("UIMDataListControl", "DUIMDataListControl"));
mixin(ControlCalls!("UIMDataList", "DUIMDataListControl"));

version(test_uim_controls) { unittest {
    assert(UIMDataList);

    auto control = UIMDataList;
    // TODO
  }
}