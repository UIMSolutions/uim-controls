module web.controls.pictures.picture;

@safe: 
import web.controls;

class DUIMPictureControl : DUIMLayoutControl {
  mixin(ControlThis!("UIMPictureControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["picture"]);
  }
}
mixin(ControlCalls!("UIMPictureControl", "DUIMPictureControl"));
mixin(ControlCalls!("UIMPicture", "DUIMPictureControl"));

version(test_uim_controls) { unittest {
    assert(UIMPicture);

    auto control = UIMPicture;
  }
}
