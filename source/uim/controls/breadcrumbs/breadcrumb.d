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

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMBreadcrumbControl() { return new DUIMBreadcrumbControl; }
