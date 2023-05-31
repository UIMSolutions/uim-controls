module web.controls.audios.audio;

@safe: 
import web.controls;

class DUIMAudioControl : DUIMControl {
  mixin(ControlThis!("UIMAudioControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Audio(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMAudioControl", "DUIMAudioControl"));
mixin(ControlCalls!("UIMAudio", "DUIMAudioControl"));

version(test_uim_controls) { unittest {
    assert(UIMAudio);

    auto control = UIMAudio;
  }
}