module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
  mixin(ControlThis!("UIMBreadcrumbControl"));

  mixin(OProperty!("string", "style"));
  mixin(OProperty!("string", "icon"));

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb"])
      .attributes(["aria-label":"breadcrumbs"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (style) {myClasses ~= "breadcrumb-"~style; }
    auto navAttributes = ["aria-label":"breadcrumb"];
    if (icon) navAttributes["style"] = "--bs-breadcrumb-divider: url(/img/icons/"~icon~");";

    return results~
      H5Nav(navAttributes, 
        H5Ol(myId, myClasses, myAttributes, myContent));
  }
}
mixin(ControlCalls!("UIMBreadcrumbControl", "DUIMBreadcrumbControl"));
mixin(ControlCalls!("UIMBreadcrumb", "DUIMBreadcrumbControl"));

version(test_uim_controls) { unittest {
    assert(UIMBreadcrumb);

    auto control = UIMBreadcrumb;
    assert(UIMBreadcrumb.style("test").style == "test");
//    assert(UIMBreadcrumb.style("test").style == "test");
 }
}
unittest {
  writeln(UIMBreadcrumb.style("test"));
}
