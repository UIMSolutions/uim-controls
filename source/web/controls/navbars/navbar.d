module web.controls.navbars.navbar;

@safe: 
import web.controls;

class DUIMNavbarControl : DUIMControl {
  mixin(ControlThis!("UIMNavbarControl"));

  mixin(OProperty!("bool", "printable"));
  mixin(OProperty!("string", "collapseMode"));
  mixin(OProperty!("string", "colorScheme"));
  mixin(OProperty!("string", "style"));

  // Navbar brand
  mixin(OProperty!("bool", "hasBrand"));
  mixin(OProperty!("string", "brandColorScheme"));
  mixin(OProperty!("string[]", "brandClasses"));
  mixin(OProperty!("string", "brandLink"));
  mixin(OProperty!("string", "brandText"));
  mixin(OProperty!("DH5Img", "brandImage"));
  mixin(OProperty!("bool", "brandImageText"));
  mixin(OProperty!("string", "containerMode"));

  // Navbar toggler
  mixin(OProperty!("bool", "hasToggler"));
  mixin(OProperty!("string", "togglerState"));
  mixin(OProperty!("string", "togglerTarget"));

  override void initialize() {
    super.initialize;

    this  
      .brandImageText(true)
      .classes(["navbar"])
      .containerMode("fluid")
      .togglerState("collapse");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (!printable) { myClasses ~= "d-print-none"; }
    if (collapseMode) {
      if (collapseMode == "never") { myClasses ~= "navbar-expand"; }
      else if (collapseMode == "always") { }
      else { myClasses ~= "navbar-expand-"~collapseMode; }
    }
    if (colorScheme) { myClasses ~= "navbar-"~colorScheme; }

    if (hasToggler) {
      myContent ~= H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":togglerState, "data-bs-target":togglerTarget],
              BS5NavbarTogglerIcon);

    }
    if (hasBrand) {
      myContent ~= H5H1(["navbar-brand navbar-brand-"~brandColorScheme]~brandClasses, 
        brandImageText ? H5A(["href":brandLink], brandImage.toString~brandText) : H5A(["href":brandLink], brandText~brandImage.toString));
    }
    myContent ~= content;
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Nav(id, myClasses, myAttributes)(
        BS5Container(myContent).mode(containerMode)
      )
    ].toH5;
  }
}
mixin(ControlCalls!("UIMNavbarControl", "DUIMNavbarControl"));
mixin(ControlCalls!("UIMNavbar", "DUIMNavbarControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbar);
  assert(UIMNavbar.noId == `<nav class="d-print-none navbar"><div class="container-fluid"></div></nav>`);
  assert(UIMNavbar.noId.printable(true) == `<nav class="navbar"><div class="container-fluid"></div></nav>`);
}}

