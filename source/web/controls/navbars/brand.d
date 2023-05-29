module uim.controls.navbars.brand;

@safe: 
import uim.controls;

class DUIMNavbarBrandControl : DUIMControl {
  mixin(ControlThis!("UIMNavbarBrandControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("navbar-brand");
  }

  mixin(OProperty!("bool", "autodark"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (autodark) myClasses ~= "navbar-brand-autodark";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
            
    return [
      H5A(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMNavbarBrandControl", "DUIMNavbarBrandControl"));
mixin(ControlCalls!("UIMNavbarBrand", "DUIMNavbarBrandControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarBrand);
  assert(UIMNavbarBrand.noId == `<a class="navbar-brand"></a>`);
}}
