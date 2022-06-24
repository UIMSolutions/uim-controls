module uim.controls.carousels.item;

@safe: 
import uim.controls;

class DUIMCarouselItemControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("bool", "active"));

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel-item"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    if (active) { myClasses ~= "active"; }
    return [
      BS5CarouselItem(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMCarouselItemControl() { return new DUIMCarouselItemControl; }