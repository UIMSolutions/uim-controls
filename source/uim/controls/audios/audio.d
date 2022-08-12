module uim.controls.audios.audio;

@safe: 
import uim.controls;

class DUIMAudioControl : DUIMControl {
  mixin(ControlThis!("UIMAudioControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Audio(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMAudioControl", "DUIMAudioControl"));
mixin(ControlCalls!("UIMAudio", "DUIMAudioControl"));

version(test_uim_controls) { unittest {
    assert(UIMAudio);

    auto control = UIMAudio;
  }
}