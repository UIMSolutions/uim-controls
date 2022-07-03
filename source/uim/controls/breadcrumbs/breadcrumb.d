module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMContainerControl {
  mixin(ControlThis!("UIMBreadcrumbControl"));

  mixin(OProperty!("string", "style"));

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb"])
      .attributes(["aria-label":"breadcrumbs"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (style) {myClasses ~= "breadcrumb-"~style; }
    
    return results~
      H5Ol(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);
  }
}
auto UIMBreadcrumbControl() { return new DUIMBreadcrumbControl; }
auto UIMBreadcrumb() { return new DUIMBreadcrumbControl; }

version(test_uim_controls) {
  unittest {
  }
}
