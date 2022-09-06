module uim.controls.timelines.title;

@safe: 
import uim.controls;

class DUIMTimelineTitleControl : DUIMControl {
  mixin(ControlThis!("UIMTimelineTitleControl"));

  override void initialize() {
    super.initialize;

    this.classes(["list-timeline-title"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5P(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTimelineTitleControl", "DUIMTimelineTitleControl"));
mixin(ControlCalls!("UIMTimelineTitle", "DUIMTimelineTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMTimelineTitle);
  assert(UIMTimelineTitle.noId == `<p class="list-timeline-title></p>`);
}}
