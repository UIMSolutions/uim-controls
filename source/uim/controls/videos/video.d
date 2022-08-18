module uim.controls.videos.video;

@safe: 
import uim.controls;

class DUIMVideoControl : DUIMControl {
  mixin(ControlThis!("UIMVideoControl"));

  override void initialize() {
    super.initialize;
  }

  mixin(OProperty!("bool", "autoplay"));
  mixin(OProperty!("bool", "autopictureinpicture"));
  mixin(OProperty!("bool", "controls"));
  mixin(OProperty!("string", "controlslist"));
  mixin(OProperty!("string", "crossorigin"));
  mixin(OProperty!("bool", "disablepictureinpicture"));
  mixin(OProperty!("bool", "disableremoteplayback"));
  mixin(OProperty!("string", "height"));
  mixin(OProperty!("bool", "loop"));
  mixin(OProperty!("bool", "muted"));
  mixin(OProperty!("bool", "playsinline"));
  mixin(OProperty!("string", "poster"));
  mixin(OProperty!("string", "preload"));
  mixin(OProperty!("string", "source"));
  mixin(OProperty!("string", "width"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (autoplay) myAttributes["autoplay"] = "autoplay"; 
    if (autopictureinpicture) myAttributes["autopictureinpicture"] = "autopictureinpicture"; 
    if (controls) myAttributes["controls"] = "controls"; 
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Video(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMVideoControl", "DUIMVideoControl"));
mixin(ControlCalls!("UIMVideo", "DUIMVideoControl"));

version(test_uim_controls) { unittest {
    assert(UIMVideo);
    assert(UIMVideo.noId == `<video></video>`);

    mixin(TestControlBooleanAttributes!("UIMVideo", ["autoplay", "autopictureinpicture"]));

    assert(!UIMVideo.autoplay);
    assert(UIMVideo.autoplay(true).autoplay);
    assert(UIMVideo.noId.autoplay(true) == `<video autoplay></video>`);

    assert(!UIMVideo.autopictureinpicture);
    assert(UIMVideo.autopictureinpicture(true).autopictureinpicture);
    assert(UIMVideo.noId.autopictureinpicture(true) == `<video autopictureinpicture></video>`);

    assert(!UIMVideo.controls);
    assert(UIMVideo.controls(true).controls);
    assert(UIMVideo.noId.controls(true) == `<video controls></video>`);
  }
}

unittest {
    // writeln(UIMVideo);
    // writeln(UIMVideo.autoplay(true));
    // writeln(UIMVideo.autopictureinpicture(true));
    // writeln(UIMVideo.controls(true));
}