module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DUIMControl[]", "items"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty"]);
  }

  mixin(AddContent!("Icon", "UIMEmptyIconControl"));
  mixin(AddContent!("Title", "UIMEmptyTitleControl"));
  mixin(AddContent!("Header", "UIMEmptyHeaderControl"));
  mixin(AddContent!("Subtitle", "UIMEmptySubtitleControl"));
  mixin(AddContent!("Action", "UIMEmptyActionControl"));
  mixin(AddContent!("Image", "UIMEmptyImageControl"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join)
    ].toH5;
  }
}
auto UIMEmptyControl() { return new DUIMEmptyControl; }
