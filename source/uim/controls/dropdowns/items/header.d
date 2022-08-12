module uim.controls.dropdowns.items.header;

@safe: 
import uim.controls;

class DUIMDropdownHeaderControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownHeaderControl"));

  mixin(OProperty!("string", "title"));

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
        H5H6(myClasses, myContent~(title ? H5String(title) : null)))
    ].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownHeaderControl", "DUIMDropdownHeaderControl"));
mixin(ControlCalls!("UIMDropdownHeader", "DUIMDropdownHeaderControl"));

version(test_uim_controls) { unittest {  
    assert(UIMDropdownHeader);
    
    auto control = UIMDropdownHeader;
  }
}
