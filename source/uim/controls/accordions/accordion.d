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

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join)
    ].toH5;
  }
}
auto UIMAccordionControl() { return new DUIMAccordionControl; }