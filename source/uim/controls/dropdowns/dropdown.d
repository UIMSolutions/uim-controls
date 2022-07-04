module uim.controls.dropdowns.dropdown;

@safe: 
import uim.controls;

class DUIMDropdownControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownControl"));

  protected DUIMControl[] _items;  
  DUIMControl[] items(this O)() {
    return _items;
  }
  O items(this O)(DUIMControl[] newItems) {
    _items = newItems;
    items.each!(item => item.parent(this));
    return cast(O)this;
  }
  O items(this O)(DUIMControl[] newItems...) { 
    this.items(newItems); 
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5Dropdown(myId, myClasses, myAttributes,
        BS5DropdownMenu(
          items.map!(item => item.toH5).join
        ) 
      );
  }
}
auto UIMDropdownControl() { return new DUIMDropdownControl; }