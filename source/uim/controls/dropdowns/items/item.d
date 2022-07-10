module uim.controls.dropdowns.items.item;

@safe: 
import uim.controls;

class DUIMDropdownItemControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownItemControl"));

  mixin(OProperty!("bool", "isDivider"));
  mixin(OProperty!("bool", "isHeader"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "color"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    if (color) myClasses ~= "bg-"~color.toLower;

    return [
      BS5DropdownLink(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMDropdownItemControl() { return new DUIMDropdownItemControl; }
auto UIMDropdownItem() { return new DUIMDropdownItemControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
