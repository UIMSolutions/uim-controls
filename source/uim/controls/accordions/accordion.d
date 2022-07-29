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
      .id("accordion-%s".format(uniform(0, 1000000)))
      .classes("accordion");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (flush) myClasses ~= "accordion-flush";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto style = "";
    if (icons) {
      style ~= `#`~this.id~`.accordion-button::after {
    background-image: url(/img/icons/`~icons[0]~`); transform: scale(0.75) !important;
}
#`~this.id~`.accordion-button:not(.collapsed)::after {
    background-image: url(/img/icons/`~icons[1]~`);
}`;
    }

    foreach(c; myContent) if (auto item = cast(DUIMAccordionItemControl)c) item.parent(this);
    return results~
      (style ? H5Style(style) : null)~ 
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMAccordionControl", "DUIMAccordionControl"));
mixin(ControlCalls!("UIMAccordion", "DUIMAccordionControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMAccordion);
    auto control = UIMAccordion;   

    assert(UIMAccordion.id("test") == `<div id="test" class="accordion"></div>`); 
  }
}
unittest{
  writeln(UIMAccordion.id("test").flush(true));
  writeln(UIMAccordion.id("test").icons(["sun", "moon"]));
}

/*
*/
