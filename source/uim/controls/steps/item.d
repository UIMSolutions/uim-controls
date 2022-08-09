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
        return results ~= H5A(myId, myClasses~["active"], myAttributes, myContent);
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
    assert(UIMStep.id("test1") == `<a id="test1" class="step-item"></a>`);

    assert(UIMStep.link("/server/page").link == "/server/page");
    assert(UIMStep.id("test2").link("/server/page") == `<span id="test2" class="step-item" href="/server/page"></span>`);

    assert(UIMStep.status("finished").status == "finished");
    assert(UIMStep.id("test3-1").status("finished") == `<a id="test3-1" class="step-item"></a>`);
    assert(UIMStep.id("test3-2").status("current") == `<a id="test3-2" class="active step-item"></a>`);
    assert(UIMStep.id("test3-3").status("open") == `<span id="test3-3" class="step-item"></span>`);
    
    assert(UIMStep.tooltip("Watch your step").tooltip == "Watch your step");
    assert(UIMStep.id("test4").tooltip("Watch your step") == `<span id="test4" class="step-item" data-bs-toggle="tooltip" title="Watch your step"></span>`);
  }
}

