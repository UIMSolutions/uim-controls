module web.controls.carousels.carousel;

@safe: 
import web.controls;

class DUIMCarouselControl : DUIMControl {
  mixin(ControlThis!("UIMCarouselControl"));

  protected DUIMControl[] _items;  
  DUIMControl[] items(this O)() {
    return _items;
  }
  O items(this O)(DUIMControl[] newItems) {
    _items = newItems;
    _items.each!(item => item.parent(this));
    return cast(O)this;
  }
  O items(this O)(DUIMControl[] newItems...) { 
    this.items(newItems); 
    return cast(O)this;
  }

  mixin(OProperty!("bool", "showControls"));
  mixin(OProperty!("bool", "showIndicators"));
  mixin(OProperty!("bool", "showDots"));
  mixin(OProperty!("bool", "showThumbs"));
  mixin(OProperty!("bool", "vertical"));

  mixin(OProperty!("string", "previousTitle"));
  mixin(OProperty!("string", "nextTitle"));

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel", "slide"])
      .attributes(["data-bs-ride":"carousel"])
      .previousTitle("Previous")
      .nextTitle("Next");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

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
        ( showControls  ? H5A(["carousel-control-prev"], ["href":"#"~myId, "role":"button", "data-bs-slide":"prev"],
            H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]),
            H5Span(["visually-hidden"], previousTitle)) 
          : null),
          ( showControls  ? H5A(["carousel-control-next"], ["href":"#"~myId, "role":"button", "data-bs-slide":"next"],
            H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]),
            H5Span(["visually-hidden"], nextTitle)) 
          : null)                  
      )
    ].toH5;
  }
}
mixin(ControlCalls!("UIMCarouselControl", "DUIMCarouselControl"));
mixin(ControlCalls!("UIMCarousel", "DUIMCarouselControl"));

version(test_uim_controls) { unittest {
    assert(UIMCarousel);

    auto control = UIMCarousel;
  }
}
