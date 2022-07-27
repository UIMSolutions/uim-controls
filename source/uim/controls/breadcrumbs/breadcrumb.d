module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
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
      H5Ol(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMBreadcrumbControl", "DUIMBreadcrumbControl"));
mixin(ControlCalls!("UIMBreadcrumb", "DUIMBreadcrumbControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMBreadcrumb);

    auto control = UIMBreadcrumb;
  }
}
