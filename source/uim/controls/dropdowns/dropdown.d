module uim.controls.dropdowns.dropdown;

@safe: 
import uim.controls;

class DUIMDropdownControl : DUIMContainerControl {
  mixin(ControlThis!("UIMDropdownControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "value"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .id("dropdown-%s".format(uniform(0, 1000000)))
      .classes(["dropdown"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto myButton = UIMButtonControl.id(myId~"-toggle").addClasses("dropdown-toggle").addAttributes(["data-bs-toggle":"dropdown", "aria-expanded":"false"])
      .color(color).title(title).link(link).value(value).tooltip(tooltip).type(type);

    return results~
      BS5Dropdown(myId, myClasses, myAttributes,
        myButton,
        BS5DropdownMenu(myId~"-Toggle", ["aria-labelledby":myId~"-toggle"],
          myContent
        ) 
    );
  }
}
auto UIMDropdownControl() { return new DUIMDropdownControl; }
auto UIMDropdown() { return new DUIMDropdownControl; }