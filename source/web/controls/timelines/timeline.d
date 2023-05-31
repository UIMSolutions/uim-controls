module web.controls.timelines.timeline;

@safe: 
import web.controls;

class DUIMTimelineControl : DUIMControl {
  mixin(ControlThis!("UIMTimeline"));

  override void initialize() {
    super.initialize;

    this
      .classes(["list", "list-timeline"]);
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Ul(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTimelineControl", "DUIMTimelineControl")); 
mixin(ControlCalls!("UIMTimeline", "DUIMTimelineControl")); 

version(test_uim_controls) { unittest {
  assert(UIMTimeline);
  assert(UIMTimeline.noId == `<ul class="list list-timeline"></ul>`);
}}
