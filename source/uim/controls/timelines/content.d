module uim.controls.timelines.content;

@safe: 
import uim.controls;

class DUIMTimelineContentControl : DUIMControl {
  mixin(ControlThis!("UIMTimelineContent"));

  override void initialize() {
    super.initialize;
    
    this
      .classes(["list-timeline-content"]);
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
mixin(ControlCalls!("UIMTimelineContentControl", "DUIMTimelineContentControl"));
mixin(ControlCalls!("UIMTimelineContent", "DUIMTimelineContentControl"));

version(test_uim_controls) { unittest {
    assert(UIMTimelineContent);

    auto control = UIMTimelineContent;
  }
}
