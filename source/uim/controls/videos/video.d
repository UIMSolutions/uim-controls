module uim.controls.videos.video;

@safe: 
import uim.controls;

class DUIMVideoControl : DUIMControl {
  mixin(ControlThis!("UIMVideoControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Video(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMVideoControl", "DUIMVideoControl"));
mixin(ControlCalls!("UIMVideo", "DUIMVideoControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMVideo);

    auto control = UIMVideo;
  }
}