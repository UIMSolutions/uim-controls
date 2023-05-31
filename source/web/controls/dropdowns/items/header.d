module web.controls.dropdowns.items.header;

@safe: 
import web.controls;

class DUIMDropdownHeaderControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownHeaderControl"));

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-header"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto coreContent = H5H6(myId, myClasses, myAttributes, myContent);
    if (style == "list") {
      return [H5Li(coreContent)].toH5;
    }
    return [coreContent].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownHeaderControl", "DUIMDropdownHeaderControl"));
mixin(ControlCalls!("UIMDropdownHeader", "DUIMDropdownHeaderControl"));

version(test_uim_controls) { unittest {  
  assert(UIMDropdownHeader);   

  assert(UIMDropdownHeader.noId.style("list") == `<li><h6 class="dropdown-header"></h6></li>`);
  assert(UIMDropdownHeader.noId == `<h6 class="dropdown-header"></h6>`);
  assert(UIMDropdownHeader("test").noId == `<h6 class="dropdown-header">test</h6>`);
}}