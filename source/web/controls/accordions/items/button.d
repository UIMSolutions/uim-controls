module uim.controls.accordions.items.button;

@safe:
import uim.controls;

class DUIMAccordionButtonControl : DUIMControl, IAccordionItem {
  mixin(ControlThis!("UIMAccordionButtonControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("accordion-button")
      .attributes([
        "data-bs-toggle":"collapse", 
        "type":"button"]);
  }

  mixin(OProperty!("string", "targetId"));
  mixin(OProperty!("bool", "expanded"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (targetId) myAttributes["data-bs-target"] = targetId;
    if (expanded) {
      myAttributes["aria-expanded"] = "true";
    } else {
      myClasses ~= "collapsed";
      myAttributes["aria-expanded"] = "false";
    }
  }
}
mixin(ControlCalls!("UIMAccordionButtonControl", "DUIMAccordionButtonControl"));
mixin(ControlCalls!("UIMAccordionButton", "DUIMAccordionButtonControl"));

version(test_uim_controls) { unittest {
  assert(UIMAccordionButton);
  writeln(UIMAccordionButton.noId);
  assert(UIMAccordionButton.noId);
}}
