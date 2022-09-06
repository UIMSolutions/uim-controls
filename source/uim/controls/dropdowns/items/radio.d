module uim.controls.dropdowns.items.radio;

@safe: 
import uim.controls;

class DUIMDropdownRadioControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownRadioControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto coreContent = H5Label(["dropdown-item"], 
      H5Input(["form-check-input m-0 me-2"], ["type":"radio"])~
      myContent);

    if (style == "list") {
      return [H5Li(coreContent)].toH5;
    }
    return [coreContent].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownRadioControl", "DUIMDropdownRadioControl"));
mixin(ControlCalls!("UIMDropdownRadio", "DUIMDropdownRadioControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownRadio);
  assert(UIMDropdownRadio.noId == `<label class="dropdown-item"><input class="form-check-input m-0 me-2" type="radio"></label>`);

  assert(UIMDropdownRadio.noId.style("list") == `<li><label class="dropdown-item"><input class="form-check-input m-0 me-2" type="radio"></label></li>`);
}}

