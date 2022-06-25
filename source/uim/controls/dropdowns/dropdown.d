module uim.controls.dropdowns.dropdown;

@safe: 
import uim.controls;

class DUIMDropdownControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DUIMDropdownItemControl[]", "items"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      BS5Dropdown(myId, myClasses, myAttributes,
        BS5DropdownMenu(
          items.map!(item => item.toH5).join
        ) 
      )
    ].toH5;
  }
}
auto UIMDropdownControl() { return new DUIMDropdownControl; }