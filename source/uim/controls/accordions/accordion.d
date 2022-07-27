module uim.controls.accordions.accordion;

@safe:
import uim.controls;

class DUIMAccordionControl : DUIMControl {
  mixin(ControlThis!("UIMAccordionControl"));

  override void initialize() {
    super.initialize;

    this
      .id("accordion-%s".format(uniform(0, 1000000)));
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);
    return results~H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMAccordionControl", "DUIMAccordionControl"));
mixin(ControlCalls!("UIMAccordion", "DUIMAccordionControl"));

version(test_uim_controls) {
  unittest {

    auto control = UIMAccordion;
  }
}
