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
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Span(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMDropdownHeaderControl() { return new DUIMDropdownHeaderControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
