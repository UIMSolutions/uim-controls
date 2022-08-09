module uim.controls.steps.container;

@safe: 
import uim.controls;

class DUIMStepsControl : DUIMControl {
  mixin(ControlThis!("UIMSteps"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "counter"));

  override void initialize() {
    super.initialize;

    this
      .classes(["steps"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) { myClasses ~= "steps-"~color; }
    if (counter) { myClasses ~= "steps-counter"; }
  }
  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results ~= H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMStepsControl", "DUIMStepsControl"));
mixin(ControlCalls!("UIMSteps", "DUIMStepsControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSteps);

    auto control = UIMSteps;
    // TODO 
  }
}

