module web.controls.carousels.item;

@safe: 
import web.controls;

class DUIMCarouselItemControl : DUIMControl {
  mixin(ControlThis!("UIMCarouselItemControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (active) { myClasses ~= "active"; }
    return [
      BS5CarouselItem(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMCarouselItemControl", "DUIMCarouselItemControl"));
mixin(ControlCalls!("UIMCarouselItem", "DUIMCarouselItemControl"));

version(test_uim_controls) { unittest {
    // TODO
  }
}
