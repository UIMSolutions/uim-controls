module uim.controls.processes.process;

@safe: 
import uim.controls;

class DUIMProcessControl : DUIMControl {
  mixin(ControlThis!("UIMProcessControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMProcessControl", "DUIMProcessControl"));
mixin(ControlCalls!("UIMProcess", "DUIMProcessControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMProcess);

    auto control = UIMProcess;
  }
}
