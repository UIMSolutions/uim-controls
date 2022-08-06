module uim.controls.dropdowns.menu;

@safe: 
import uim.controls;

class DUIMDropdownMenuControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownMenuControl"));

  override void initialize() {
    super.initialize;

    this
      .id("dropdown-menu-%s".format(uniform(0, 1000000)))
      .classes(["dropdown-menu"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);
    
    return results~
        H5Div(myId, myClasses, myAttributes, myContent));
    }
  }
}
mixin(ControlCalls!("UIMDropdownMenuControl", "DUIMDropdownMenuControl"));
mixin(ControlCalls!("UIMDropdownMenu", "DUIMDropdownMenuControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMDropdownMenu);

    auto control = UIMDropdownMenu;
  }
}
unittest {
  writeln(UIMDropdownMenu.id("test"));
}