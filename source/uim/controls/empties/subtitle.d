module uim.controls.empties.subtitle;

@safe: 
import uim.controls;

class DUIMEmptySubtitleControl : DUIMEmptyItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-subtitle"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5P(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMEmptySubtitleControl() { return new DUIMEmptySubtitleControl; }
