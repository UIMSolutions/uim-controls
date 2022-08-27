module uim.controls.dropdowns.dropdown;

@safe: 
import uim.controls;

class DUIMDropdownControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "value"));
  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "tooltip"));
  mixin(OProperty!("bool", "split"));
  mixin(OProperty!("bool", "arrow"));
  mixin(OProperty!("bool", "dark"));
  mixin(OProperty!("string", "style")); // empty or 'list'

  override void initialize() {
    super.initialize;

    this
      .id("dropdown-%s".format(uniform(0, 1000000)))
      .classes(["dropdown"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
    if (arrow) myClasses ~= "dropdown-menu-arrow";
    if (dark) myClasses ~= "dropdown-menu-dark";

    myContent.filter!(c => cast(DUIMDropdownItemControl)c).map!(c => c.style(style));
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (split) {
      auto myButton = UIMButton.color(color).title(title).link(link).value(value).tooltip(tooltip).type(type).size(size);
      auto myButtonSplit = UIMButton.id(myId~"-toggle").addClasses(["dropdown-toggle", "dropdown-toggle-split"])
        .addAttributes(["data-bs-toggle":"dropdown", "aria-expanded":"false"])
        .color(color).title(`<span class="visually-hidden">Toggle Dropdown</span>`).link(link).value(value).tooltip(tooltip).type(type).size(size);


      if (style == "list") {
        return results~
          H5Div(myId, ["btn-group"], myAttributes, 
            myButton, myButtonSplit,
            H5Ul(myId~"-Toggle", ["aria-labelledby":myId~"-toggle"], 
              myContent
            ));
      }
      return results~
        H5Div(myId, ["btn-group"], myAttributes, 
          myButton, myButtonSplit,
          H5Div(myId~"-Toggle", ["aria-labelledby":myId~"-toggle"],
            myContent
          ));
    }
    auto myButton = UIMButton(myId~"-toggle", ["dropdown-toggle"], ["data-bs-toggle":"dropdown", "aria-expanded":"false"])
      .color(color).title(title).link(link).value(value).tooltip(tooltip).type(type).size(size);

    return results~
      BS5Dropdown(myId, myClasses, myAttributes,
        myButton,
        UIMDropdownMenu.buttonId(myButton.id).style(style)(
          myContent
        ) 
    );
  }
}
mixin(ControlCalls!("UIMDropdownControl", "DUIMDropdownControl"));
mixin(ControlCalls!("UIMDropdown", "DUIMDropdownControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdown);

  mixin(TestControlBooleanAttributes!("UIMDropdown", [
    "split", "arrow", "dark"])); 

  mixin(TestControlStringAttributes!("UIMDropdown", [
    "color", "title", "link", "type", "value", "size", "tooltip"]));   
}}
