module uim.controls.navbars.image;

@safe: 
import uim.controls;

class DUIMNavbarBrandImageControl : DUIMDivControl {
  mixin(ControlThis!("UIMNavbarBrandImageControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("navbar-brand-image");
  }
}
mixin(ControlCalls!("UIMNavbarBrandImageControl", "DUIMNavbarBrandImageControl"));
mixin(ControlCalls!("UIMNavbarBrandImage", "DUIMNavbarBrandImageControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarBrandImage);
  assert(UIMNavbarBrandImage.noId == `<div class="navbar-brand-image"></div>`);
}}
