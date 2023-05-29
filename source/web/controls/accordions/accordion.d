module uim.controls.accordions.accordion;

@safe:
import uim.controls;

class DUIMAccordionControl : DUIMControl {
  mixin(ControlThis!("UIMAccordionControl"));

  mixin(OProperty!("bool", "flush"));
  mixin(OProperty!("string[]", "icons")); // icons[0] = collapsed, icons[1] = expanded 

  override void initialize() {
    super.initialize;

    this
      .classes("accordion");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (flush) myClasses ~= "accordion-flush";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    string style = null;
    if (icons) {
      style ~= `#`~this.id~`.accordion-button::after {
    background-image: url(`~icons[0]~`); transform: scale(0.75) !important;
}
#`~this.id~`.accordion-button:not(.collapsed)::after {
    background-image: url(`~icons[1]~`);
}`;
    }

    foreach(c; myContent) if (auto item = cast(DUIMAccordionItemControl)c) item.parent(this);
    return [
      (style ? H5Style(style) : null),  
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMAccordionControl", "DUIMAccordionControl"));
mixin(ControlCalls!("UIMAccordion", "DUIMAccordionControl"));

version(test_uim_controls) { unittest {
    assert(UIMAccordion);
    assert(UIMAccordion.noId == `<div class="accordion"></div>`);

    assert(UIMAccordion.flush(true).flush); 
    assert(UIMAccordion.noId.flush(true) == `<div class="accordion accordion-flush"></div>`); 
  }
}

