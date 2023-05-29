module uim.controls.medias.media;

@safe:
import uim.controls;

class DUIMMediaControl : DUIMControl {
  mixin(ControlThis!("UIMMediaControl")); 

  override void initialize() {
    super.initialize;

    this
      .classes("media");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMMediaControl", "DUIMMediaControl"));
mixin(ControlCalls!("UIMMedia", "DUIMMediaControl"));

version(test_uim_controls) { unittest {
  assert(UIMMedia);
  assert(UIMMedia.noId == `<div class="media"></div>`);
}}
