module uim.controls.dropdowns.items.checkbox;

@safe: 
import uim.controls;

class DUIMDropdownCheckboxControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownCheckboxControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto coreContent = H5Label(["dropdown-item"], 
      H5Input(["form-check-input m-0 me-2"], ["type":"checkbox"])~ 
      myContent);

    if (style == "list") {
      return [H5Li(coreContent)].toH5;
    }
    return [coreContent].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownCheckboxControl", "DUIMDropdownCheckboxControl"));
mixin(ControlCalls!("UIMDropdownCheckbox", "DUIMDropdownCheckboxControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownCheckbox);
  assert(UIMDropdownCheckbox.noId == `<label class="dropdown-item"><input class="form-check-input m-0 me-2" type="checkbox"></label>`);

  assert(UIMDropdownCheckbox.noId.style("list") == `<li><label class="dropdown-item"><input class="form-check-input m-0 me-2" type="checkbox"></label></li>`);
}}