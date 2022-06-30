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
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5P(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMEmptySubtitleControl() { return new DUIMEmptySubtitleControl; }
