module uim.controls.dropdowns.toggle;

@safe: 
import uim.controls;

class DUIMDropdownToggleControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownToggleControl"));

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
mixin(ControlCalls!("UIMDropdownToggleControl", "DUIMDropdownToggleControl"));
mixin(ControlCalls!("UIMDropdownToggle", "DUIMDropdownToggleControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDropdownToggle);

    auto control = UIMDropdownToggle;
    // TODO
  }
}