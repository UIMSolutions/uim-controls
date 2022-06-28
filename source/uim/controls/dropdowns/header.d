module uim.controls.dropdowns.header;

@safe: 
import uim.controls;

class DUIMDropdownDividerControl : DUIMDropdownItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-header"])
      .isDivider(false)
      .isHeader(true); 
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
auto UIMDropdownItemControl() { return new DUIMDropdownDividerControl; }