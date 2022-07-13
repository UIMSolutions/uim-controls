module uim.controls.steps.step;

@safe: 
import uim.controls;

class DUIMStepControl : DUIMControl {
  mixin(ControlThis!("UIMStep"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results ~= H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMStepControl", "DUIMStepControl"));
mixin(ControlCalls!("UIMStep", "DUIMStepControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMStep);

    auto control = UIMStep;
    // TODO 
  }
}

