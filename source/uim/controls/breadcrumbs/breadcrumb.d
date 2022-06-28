module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
  this() { super(); }
  
  protected DUIMControl[] _items;  
  DUIMControl[] items(this O)() {
    return _items;
  }
  O items(this O)(DUIMControl[] newItems) {
    _items = newItems;
    _items.each!(item => item.parent(this));
    return cast(O)this;
  }
  O items(this O)(DUIMControl[] newItems...) { 
    this.items(newItems); 
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb"])
      .attributes(["aria-label":"breadcrumbs"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Ol(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join)
    ].toH5;
  }
}
auto UIMBreadcrumbControl() { return new DUIMBreadcrumbControl; }
