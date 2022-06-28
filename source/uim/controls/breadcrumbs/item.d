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
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    if (active) {
      myClasses ~= ["active"];
      myAttributes["aria-current"] = "page"; 
    }

    return [
      H5Li(myId, myClasses, myAttributes, myContent)  
    ].toH5;
  }
}
auto UIMBreadcrumbItemControl() { return new DUIMBreadcrumbItemControl; }
