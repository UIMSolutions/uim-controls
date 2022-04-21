module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .attributes(["href":"#"]);
  }
}
auto UIMBreadcrumbControl() { return new DUIMBreadcrumbControl; }