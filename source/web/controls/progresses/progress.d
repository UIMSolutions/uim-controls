module web.controls.progresses.progress;

@safe: 
import web.controls;

class DUIMProgressControl : DUIMControl {
  mixin(ControlThis!("UIMProgress"));

  mixin(OProperty!("string", "size"));

  override void initialize() {
    super.initialize;
    this
      .classes(["progress"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (size) { myClasses ~= "progress-"~size; }

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMProgressControl", "DUIMProgressControl"));
mixin(ControlCalls!("UIMProgress", "DUIMProgressControl"));

version(test_uim_controls) { unittest {
  assert(UIMProgress);
  assert(UIMProgress.noId == `<div class="progress"></div>`);
  assert(UIMProgress.noId.size("sm") == `<div class="progress progress-sm"></div>`);

  mixin(TestControlStringAttributes!("UIMProgress", [
    "size"]));
}}
