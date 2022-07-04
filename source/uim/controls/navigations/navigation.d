module uim.controls.navigations.navigation;

@safe: 
import uim.controls;

class DUIMNavigationControl : DUIMControl {
  mixin(ControlThis!("UIMNavigationControl"));

  mixin(OProperty!("string", "printMode"));
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

  // Navbar toggler
  mixin(OProperty!("bool", "hasToggler"));
  mixin(OProperty!("string", "togglerState"));
  mixin(OProperty!("string", "togglerTarget"));

  override void initialize() {
    super.initialize;

    this  
      .brandImageText(true)
      .classes(["navbar"])
      .printMode("none")
      .hasToggler(true)
      .togglerState("collapse");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (printMode) { myClasses ~= "d-print-"~printMode; }
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

    if ("style" in myAttributes) { myAttributes["style"] ~= ";"~style; } else { myAttributes["style"] = style; }
    return [
      H5Header(id, myClasses, myAttributes)
        .content(
          H5Div(["container-xl"], 
            myContent))].toH5;
  }
}
mixin(ControlCalls!("UIMNavigationControl", "DUIMNavigationControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
