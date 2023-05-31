module web.controls.timelines.icon;

@safe: 
import web.controls;

class DUIMTimelineIconControl : DUIMControl {
  mixin(ControlThis!("UIMTimelineIconControl"));

  mixin(OProperty!("string", "color"));
  
  override void initialize() {
    super.initialize;

    this
      .classes(["list-timeline-icon"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (color) myClasses ~= ["bg-"~color];
    
    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTimelineIconControl", "DUIMTimelineIconControl"));
mixin(ControlCalls!("UIMTimelineIcon", "DUIMTimelineIconControl"));

version(test_uim_controls) { unittest {
  assert(UIMTimelineIcon);
  assert(UIMTimelineIcon.noId == `<div class="list-timeline-icon"></div>`);
}}
