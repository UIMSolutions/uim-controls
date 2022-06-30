module uim.controls.carousels.item;

@safe: 
import uim.controls;

class DUIMCarouselItemControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel-item"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (active) { myClasses ~= "active"; }
    return [
      BS5CarouselItem(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMCarouselItemControl() { return new DUIMCarouselItemControl; }