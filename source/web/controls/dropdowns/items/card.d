module web.controls.dropdowns.items.card;

@safe: 
import web.controls;

class DUIMDropdownCardControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownCardControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto coreContent = H5Div(["dropdown-menu", "dropdown-menu-card"], ["style":"max-width: 20rem;"]);

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
  assert(UIMDropdownCard.noId == `<div class="dropdown-menu dropdown-menu-card" style="max-width: 20rem;"></div>`);

  assert(UIMDropdownCard.style("list").noId == `<li><div class="dropdown-menu dropdown-menu-card" style="max-width: 20rem;"></div></li>`);
}}