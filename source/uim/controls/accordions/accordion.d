module uim.controls.accordions.accordion;

@safe:
import uim.controls;

class DUIMAccordionControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMAccordionControl() { return new DUIMAccordionControl; }