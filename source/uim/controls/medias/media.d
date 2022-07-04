module uim.controls.medias.media;

@safe:
import uim.controls;

class DUIMMediaControl : DUIMControl {
  mixin(ControlThis!("UIMMediaControl")); 

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMMediaControl", "DUIMMediaControl"));
mixin(ControlCalls!("UIMMedia", "DUIMMediaControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
