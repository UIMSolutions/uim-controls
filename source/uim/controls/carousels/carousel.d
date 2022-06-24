module uim.controls.carousels.carousel;

@safe: 
import uim.controls;

class DUIMCarouselControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DUIMCarouselItemControl[]", "items"));
  mixin(OProperty!("bool", "showControls"));
  mixin(OProperty!("bool", "showIndicators"));
  mixin(OProperty!("bool", "showDots"));
  mixin(OProperty!("bool", "showThumbs"));

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel", "slide"])
      .attributes(["data-bs-ride":"carousel"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;

    auto indicatorCounter = 0;

    auto myIndicators = BS5CarouselIndicators;
    if (showIndicators) {
      myIndicators.content(BS5CarouselIndicators(
        items.map!(item => 
          cast(DH5Obj)H5Button(
            [item.active ? "active" : null], 
            ["type":"button", "data-bs-target":"#"~myId, "data-bs-slide-to":to!string(++indicatorCounter), 
            "aria-current":"true", "aria-label":"Slide "~to!string(indicatorCounter)])
          ).array));

      if (showDots) { myIndicators.addClasses("carousel-indicators-dot"); }
      else if (showThumbs) { myIndicators.addClasses("carousel-indicators-thumbs"); }
    }

    return [
      BS5Carousel(myId, myClasses, myAttributes, 
        (items  ? BS5CarouselInner(items.map!(item => item.toH5).join) 
                : null),
        ( showIndicators ? myIndicators : null),
        ( showControls  ? H5A(["carousel-control-next"], ["href":"#"~myId, "role":"button", "data-bs-slide":"next"],
                            H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]),
                            H5Span(["visually-hidden"], "Next")) 
                          : null)                  
      )
    ].toH5;
  }
}
auto UIMCarouselControl() { return new DUIMCarouselControl; }
