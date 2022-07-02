module uim.controls.medias.media;

@safe:
import uim.controls;

class DUIMMediaControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMMediaControl() { return new DUIMMediaControl; }
auto UIMMedia() { return new DUIMMediaControl; }
