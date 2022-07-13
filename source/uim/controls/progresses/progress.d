module uim.controls.progresses.progress;

@safe: 
import uim.controls;

class DUIMProgressControl : DUIMControl {
  mixin(ControlThis!("UIMProgress"));

  mixin(OProperty!("string", "size"));

  override void initialize() {
    super.initialize;
    this
      .classes(["progress"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (size) { myClasses ~= "progress-"~size; }

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMProgressControl", "DUIMProgressControl"));
mixin(ControlCalls!("UIMProgress", "DUIMProgressControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMProgress);

    auto control = UIMProgress;
    // TODO 
  }
}
