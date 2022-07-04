module uim.controls.accordions.accordion;

@safe:
import uim.controls;

class DUIMAccordionControl : DUIMContainerControl {
  mixin(ControlThis!("UIMAccordionControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);
  }
}
mixin(ControlCalls!("UIMAccordionControl", "DUIMAccordionControl"));
mixin(ControlCalls!("UIMAccordion", "DUIMAccordionControl"));

version(test_uim_controls) {
  unittest {
    auto contreol = UIMAccordion;
  }
}
