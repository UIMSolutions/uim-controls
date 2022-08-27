module uim.controls.dropdowns.items.divider;

@safe: 
import uim.controls;

class DUIMDropdownDividerControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownDividerControl"));

  // mixin(OProperty!("bool", "isDivider"));

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-divider"])
      .isDivider(true); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (style == "list") {
      return [H5Li(H5Div(myId, myClasses, myAttributes))].toH5;
    }
    return [H5Div(myId, myClasses, myAttributes)].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownDividerControl", "DUIMDropdownDividerControl"));
mixin(ControlCalls!("UIMDropdownDivider", "DUIMDropdownDividerControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownDivider);
  assert(UIMDropdownDivider.noId == `<div class="dropdown-divider"></div>`);

  assert(UIMDropdownDivider.style("list").noId == `<li><div class="dropdown-divider"></div></li>`);
}}