module uim.controls.breadcrumbs.item;

@safe: 
import uim.controls;

class DUIMBreadcrumbItemControl : DUIMControl {
  mixin(ControlThis!("UIMBreadcrumbItemControl"));

  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    writeln("UIMBreadcrumbItem 1");
    if (active) {
      myClasses ~= ["active"];
      myAttributes["aria-current"] = "page"; 
    }

    writeln("UIMBreadcrumbItem 2");
    if (link) {
      writeln("UIMBreadcrumbItem 3");
      auto myLink = H5A(["href":link], myContent);

      return [H5Li(myId, myClasses, myAttributes, H5A(["href":link], myContent))].toH5;
    }
    writeln("UIMBreadcrumbItem 4");
    return [H5Li(myId, myClasses, myAttributes, myContent)].toH5;
  }

  override string toString() {
    return toString(null);
  }
  override string toString(STRINGAA options) {
    writeln("UIMBreadcrumbItem toString 1");
    if (auto h5 = toH5(options)) {
      writeln("UIMBreadcrumbItem toString 2");
      return h5.toString;
    } 
    writeln("UIMBreadcrumbItem toString 3");
    return "";
  }
}
mixin(ControlCalls!("UIMBreadcrumbItemControl", "DUIMBreadcrumbItemControl"));
mixin(ControlCalls!("UIMBreadcrumbItem", "DUIMBreadcrumbItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMBreadcrumbItem);
    assert(UIMBreadcrumbItem.noId == `<li class="breadcrumb-item"></li>`);

    // Inherited
    mixin(TestControlBooleanAttributes!("UIMBreadcrumbItem", [
      "active" 
    ]));

    mixin(TestControlStringAttributes!("UIMBreadcrumbItem", [
      "link" 
    ]));
}}
