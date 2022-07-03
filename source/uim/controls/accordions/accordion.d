module uim.controls.accordions.accordion;

@safe:
import uim.controls;

class DUIMAccordionControl : DUIMControl {
  this() { super(); }

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
auto UIMAccordionControl() { return new DUIMAccordionControl; }
auto UIMAccordion() { return new DUIMAccordionControl; }

version(test_uim_controls) {
  unittest {
  }
}
