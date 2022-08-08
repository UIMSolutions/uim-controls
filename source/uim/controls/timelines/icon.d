module uim.controls.timelines.icon;

@safe: 
import uim.controls;

class DUIMTimelineIconControl : DUIMControl {
  mixin(ControlThis!("UIMTimelineIconControl"));

  mixin(OProperty!("string", "color"));
  
  override void initialize() {
    super.initialize;

    this
      .classes(["list-timeline-icon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (color) myClasses ~= ["bg-"~color];
    
    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTimelineIconControl", "DUIMTimelineIconControl"));
mixin(ControlCalls!("UIMTimelineIcon", "DUIMTimelineIconControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTimelineIcon);

    auto control = UIMTimelineIcon;
  }
}
