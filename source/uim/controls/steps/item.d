module uim.controls.steps.step;

@safe: 
import uim.controls;

class DUIMStepItemItemControl : DUIMControl {
  mixin(ControlThis!("UIMStepItemItem"));

  override void initialize() {
    super.initialize;

    this
      .classes(["step-item"]);
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results ~= H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMStepItemItemControl", "DUIMStepItemItemControl"));
mixin(ControlCalls!("UIMStepItemItem", "DUIMStepItemItemControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMStepItemItem);

    auto control = UIMStepItemItem;
    // TODO 
  }
}

