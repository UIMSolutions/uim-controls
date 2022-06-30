module uim.controls.breadcrumbs.item;

@safe: 
import uim.controls;

class DUIMBreadcrumbItemControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb-item"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (active) {
      myClasses ~= ["active"];
      myAttributes["aria-current"] = "page"; 
    }

    return results~
      H5Li(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMBreadcrumbItemControl() { return new DUIMBreadcrumbItemControl; }
auto UIMBreadcrumbItem() { return new DUIMBreadcrumbItemControl; }
