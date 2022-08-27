module uim.controls.breadcrumbs.breadcrumb;

@safe: 
import uim.controls;

class DUIMBreadcrumbControl : DUIMControl {
  mixin(ControlThis!("UIMBreadcrumbControl"));

  mixin(OProperty!("string", "style"));
  mixin(OProperty!("string", "icon"));

  O items(this O)(string[][] newItems...) {
    this.items(newItems);
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
    this.items(newItems);
    return cast(O)this;
  }  

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb"])
      .attributes(["aria-label":"breadcrumbs"]);
  }

  O addItems(this O)(string[][] newItems...) {
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
  }

  bool hasActiveItem() {
    writeln("? hasActiveItem ?");
    writeln("items:", _items.length);
    foreach(item; _items) {      
      writeln(item);
      if (item) {
        writeln("! has !");
        bool a = item.active;
        if (a) {
          writeln("! return true !");
          return true;
        }
        writeln("Next try");
      }
      else 
        writeln("? null ?");
    }
    writeln("! has not!");
    return false;
  }

  auto activeItem() {
    foreach(item; _items) if (item && item.active) return item;
    return null;
  }

  O activateItem(this O)(size_t pos) {
    foreach(index, item; _items) if (item) item.active(index == pos);
    return cast(O)this;
  }

  O activateLastItem(this O)() {
    writeln("? activateLastItem ?");
    if (_items.length > 0) {
      auto item = _items[_items.length-1];
      if (item) item.active(true);
    }
    return cast(O)this;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (style) {myClasses ~= "breadcrumb-"~style; }
    auto navAttributes = ["aria-label":"breadcrumb"];
    if (icon) navAttributes["style"] = "--bs-breadcrumb-divider: url(/img/icons/"~icon~");";

    writeln("Items: ", items.length);
    writeln("1");
    if (!hasActiveItem) {
      writeln("Has no active item");
      activateLastItem;
    }
    else 
      writeln("Has active item");
    
    return results~
      H5Nav(navAttributes, 
        H5Ol(myId, myClasses, myAttributes, _items.toH5));
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
    writeln(breadcrumb);

    breadcrumb = UIMBreadcrumb.items([
      UIMBreadcrumbItem("test1"),
      UIMBreadcrumbItem("test2"),
      UIMBreadcrumbItem("test3")
    ]);
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);

    breadcrumb = UIMBreadcrumb;
    breadcrumb.items(
      UIMBreadcrumbItem("test1"),
      UIMBreadcrumbItem("test2"),
      UIMBreadcrumbItem("test3")
    );
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);

    breadcrumb = UIMBreadcrumb;
    breadcrumb.addItems(UIMBreadcrumbItem("test1"));
    breadcrumb.addItems(UIMBreadcrumbItem("test2"));
    breadcrumb.addItems(UIMBreadcrumbItem("test3"));
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);

    breadcrumb = UIMBreadcrumb.items([
      UIMBreadcrumbItem("test1").link("a/b/c"),
      UIMBreadcrumbItem("test2").link("a/b/c"),
      UIMBreadcrumbItem("test3").link("a/b/c")
    ]);
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);    

    breadcrumb = UIMBreadcrumb.items([
      ["x/b/c", "test1"],
      ["x/b/c", "test2"],
      ["x/b/c", "test3"]
    ]);
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb);    

    breadcrumb = UIMBreadcrumb.items(
      ["x/y/c", "test1"],
      ["x/y/c", "test2"],
      ["x/y/c", "test3"]
    );
    assert(breadcrumb.items.length == 3);
    writeln(breadcrumb); 

    writeln(breadcrumb.toH5); 
}}
