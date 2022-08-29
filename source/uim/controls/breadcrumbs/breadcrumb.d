module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
  mixin(ControlThis!("UIMBreadcrumbControl"));

  mixin(OProperty!("string", "style"));
  mixin(OProperty!("string", "icon"));

  O items(this O)(string[][] newItems...) {
    this.items(newItems.dup);
    return cast(O)this;
  }
  O items(this O)(string[][] newItems) {
    this.items(newItems
      .filter!(item => item.length > 1)
      .map!(item => UIMBreadcrumbItem.link(item[0])(item[1]))
      .array);
    return cast(O)this;
  } 
  mixin(OProperty!("DUIMBreadcrumbItemControl[]", "items"));  
  O items(this O)(DUIMBreadcrumbItemControl[] newItems...) {
    _items = newItems.dup;
    return cast(O)this;
  } 

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb"])
      .attributes(["aria-label":"breadcrumbs"]);
  }

  /* O addItems(this O)(string[][] newItems...) {
    this.addItems(newItems);
    return cast(O)this;
  }
  O addItems(this O)(string[][] newItems) {
    this.addItems(newItems
      .filter!(item => item.length > 1)
      .map!(item => UIMBreadcrumbItem.link(item[0])(item[1]))
      .array);
    return cast(O)this;
  }
  O addItems(this O)(DUIMBreadcrumbItemControl[] newItems...) {
    this.addItems(newItems);
    return cast(O)this;
  }
  O addItems(this O)(DUIMBreadcrumbItemControl[] newItems) {
    _items ~= newItems;
    return cast(O)this;
  } */

  bool hasActiveItem() {
    foreach(item; this.items) {      
      if (item) {
        if (item.active) {
          return true;
        }
      }
    }
    return false;
  }

  auto activeItem() {
    foreach(item; this.items) if (item && item.active) return item;
    return null;
  }

  O activateItem(this O)(size_t pos) {
    foreach(index, item; this.items) if (item) item.active(index == pos);
    return cast(O)this;
  }

  O activateLastItem(this O)() {
    if (this.items.length > 0) {
      this.items[this.items.length-1].active(true);
    }
    return cast(O)this;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (style) {myClasses ~= "breadcrumb-"~style; }
    auto navAttributes = ["aria-label":"breadcrumb"];
    if (icon) navAttributes["style"] = "--bs-breadcrumb-divider: url(/img/icons/"~icon~");";

    if (!hasActiveItem) {
      activateLastItem;
    }

    string myC;
    foreach(index, i; items) {
      if (i) myC ~= i.toString;
    } // BUG!!!

    return [H5Nav(navAttributes, 
      H5Ol(myId, myClasses, myAttributes, myC))].toH5;
  }
}
mixin(ControlCalls!("UIMBreadcrumbControl", "DUIMBreadcrumbControl"));
mixin(ControlCalls!("UIMBreadcrumb", "DUIMBreadcrumbControl"));

version(test_uim_controls) { unittest {
    assert(UIMBreadcrumb);

    mixin(TestControlStringAttributes!("UIMBreadcrumb", [
      "icon", "style" 
    ]));

    auto breadcrumb = UIMBreadcrumb.items(
      UIMBreadcrumbItem("test1"),
      UIMBreadcrumbItem("test2"),
      UIMBreadcrumbItem("test3")
    );
    assert(breadcrumb.items.length == 3);

    breadcrumb = UIMBreadcrumb.items([
      UIMBreadcrumbItem("test1"),
      UIMBreadcrumbItem("test2"),
      UIMBreadcrumbItem("test3")
    ]);
    assert(breadcrumb.items.length == 3);

    breadcrumb = UIMBreadcrumb;
    breadcrumb.items(
      UIMBreadcrumbItem("test1"),
      UIMBreadcrumbItem("test2"),
      UIMBreadcrumbItem("test3")
    );
    assert(breadcrumb.items.length == 3);

/*     breadcrumb = UIMBreadcrumb;
    breadcrumb.addItems(UIMBreadcrumbItem("test1"));
    breadcrumb.addItems(UIMBreadcrumbItem("test2"));
    breadcrumb.addItems(UIMBreadcrumbItem("test3"));
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);
 */
    breadcrumb = UIMBreadcrumb.items([
      UIMBreadcrumbItem("test1").link("a/b/c"),
      UIMBreadcrumbItem("test2").link("a/b/c"),
      UIMBreadcrumbItem("test3").link("a/b/c")
    ]);
    assert(breadcrumb.items.length == 3);

    breadcrumb = UIMBreadcrumb.items([
      ["x/b/c", "test1"],
      ["x/b/c", "test2"],
      ["x/b/c", "test3"]
    ]);
    assert(breadcrumb.items.length == 3);

    breadcrumb = UIMBreadcrumb.items(
      ["x/y/c", "test1"],
      ["x/y/c", "test2"],
      ["x/y/c", "test3"]
    );
    assert(breadcrumb.items.length == 3);
}}
