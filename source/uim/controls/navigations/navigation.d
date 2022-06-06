module uim.controls.navigations.navigation;

@safe: 
import uim.controls;

class DUIMNavigationControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "printMode"));
  mixin(OProperty!("string", "collapseMode"));
  mixin(OProperty!("string", "colorScheme"));

  // Navbar brand
  mixin(OProperty!("bool", "hasBrand"));
  mixin(OProperty!("string", "brandColorScheme"));
  mixin(OProperty!("string[]", "brandClasses"));
  mixin(OProperty!("string", "brandLink"));
  mixin(OProperty!("DH5Img", "brandImage"));

  // Navbar toggler
  mixin(OProperty!("bool", "hasToggler"));
  mixin(OProperty!("string", "togglerState"));
  mixin(OProperty!("string", "togglerTarget"));

  override void initialize() {
    super.initialize;

    this  
      .classes(["navbar"])
      .printMode("none")
      .hasToggler(true)
      .togglerState("collapse");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    auto bufClasses = this.classes.dup;
    if (printMode) { bufClasses ~= "d-print-"~printMode; }
    if (collapseMode) {
      if (collapseMode == "never") { bufClasses ~= "navbar-expand"; }
      else if (collapseMode == "always") { }
      else { bufClasses ~= "navbar-expand-"~collapseMode; }
    }
    if (colorScheme) { bufClasses ~= "navbar-"~colorScheme; }

    DH5Obj[] bufContent;
    if (hasToggler) {
      bufContent ~= H5Button(["navbar-toggler"], ["type":"button", "data-bs-toggle":togglerState, "data-bs-target":togglerTarget],
              BS5NavbarTogglerIcon);

    }
    if (hasBrand) {
      bufContent ~= H5H1(["navbar-brand navbar-brand-"~brandColorScheme]~brandClasses, 
        H5A(["href":brandLink], brandImage));
    }
    bufContent ~= content;

    return [
      H5Header(id, bufClasses, attributes)
        .content(
          H5Div(["container-xl"], 
            bufContent))].toH5;
  }
}
auto UIMNavigationControl() { return new DUIMNavigationControl; }