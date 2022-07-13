module uim.controls.timelines.timeline;

@safe: 
import uim.controls;

class DUIMTimelineControl : DUIMControl {
  mixin(ControlThis!("UIMTimeline"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTimelineControl", "DUIMTimelineControl")); 
mixin(ControlCalls!("UIMTimeline", "DUIMTimelineControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTimeline);

    auto control = UIMTimeline;
    // TODO
  }
}
