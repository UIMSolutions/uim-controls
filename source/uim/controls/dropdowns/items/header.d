module uim.controls.dropdowns.items.header;

@safe: 
import uim.controls;

class DUIMDropdownHeaderControl : DUIMDropdownItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-header"])
      .isDivider(false)
      .isHeader(true); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Li(myId, myAttributes, 
        H5H6(myClasses, myContent))
    ].toH5;
  }
}
auto UIMDropdownHeaderControl() { return new DUIMDropdownHeaderControl; }
auto UIMDropdownHeader() { return new DUIMDropdownHeaderControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
