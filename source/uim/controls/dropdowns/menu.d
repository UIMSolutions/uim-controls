module uim.controls.dropdowns.menu;

@safe: 
import uim.controls;

class DUIMDropdownMenuControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownMenuControl"));

  mixin(OProperty!("bool", "dark"));
  mixin(OProperty!("string", "buttonId"));

  override void initialize() {
    super.initialize;

    this
      .id("dropdown-menu-%s".format(uniform(0, 1000000)))
      .classes(["dropdown-menu"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (dark) myClasses ~= "dropdown-menu-dark";
    if (buttonId) myAttributes["aria-labelledby"] = buttonId;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);
    
    return results~
      H5Ul(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMDropdownMenuControl", "DUIMDropdownMenuControl"));
mixin(ControlCalls!("UIMDropdownMenu", "DUIMDropdownMenuControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDropdownMenu);

    assert(UIMDropdownMenu.id("test") == `<div id="test" class="dropdown-menu"></div>`);

    assert(UIMDropdownMenu.dark(true).dark);
    assert(UIMDropdownMenu.id("test").dark(true) == `<div id="test" class="dropdown-menu dropdown-menu-dark"></div>`);

    assert(UIMDropdownMenu.buttonId("abc").buttonId == `abc`);
    assert(UIMDropdownMenu.id("test").buttonId("abc") == `<div id="test" class="dropdown-menu" aria-labelledby="abc"></div>`);
  }
}
