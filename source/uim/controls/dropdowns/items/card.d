module uim.controls.dropdowns.items.card;

@safe: 
import uim.controls;

class DUIMDropdownCardControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownCardControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    auto coreContent = H5Label(["dropdown-item"], 
      H5Input(["form-check-input m-0 me-2"], ["type":"card"], myContent));

    if (style == "list") {
      return [H5Li(coreContent)].toH5;
    }
    return [coreContent].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownCardControl", "DUIMDropdownCardControl"));
mixin(ControlCalls!("UIMDropdownCard", "DUIMDropdownCardControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownCard);
  assert(UIMDropdownCard.noId == `<div class="dropdown-card"></div>`);
  writeln(UIMDropdownCard.style("list").noId);
  assert(UIMDropdownCard.style("list").noId == `<li><hr class="dropdown-card"></li>`);
}}