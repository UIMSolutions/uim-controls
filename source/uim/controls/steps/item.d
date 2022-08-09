module uim.controls.steps.item;

@safe: 
import uim.controls;

class DUIMStepControl : DUIMControl {
  mixin(ControlThis!("UIMStep"));

  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "status")); // finished, current, open
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["step-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (link) { myAttributes["href"] = link; }
    if (tooltip) {
      myAttributes["data-bs-toggle"]="tooltip";
      myAttributes["title"] = tooltip;
    }
  }


  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    switch(status) {
      case "finished":
        return results ~= H5A(myId, myClasses, myAttributes, myContent);
      case "current":
        return results ~= H5A(myId, myClasses, myAttributes, myContent);
      default:
        return results ~= H5Span(myId, myClasses, myAttributes, myContent);
    }
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

