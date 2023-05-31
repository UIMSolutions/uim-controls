module web.controls.paginations.pagination;

@safe:
import web.controls;

class DUIMPaginationControl : DUIMControl {
  mixin(ControlThis!("UIMPaginationControl"));

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "navId"));
  mixin(OProperty!("string[]", "navClasses"));
  mixin(OProperty!("STRINGAA", "navAttributes"));
  
  override void initialize() {
    super.initialize;

    this
      .id("pagination-%s".format(uniform(0, 1000000)))
      .classes(["pagination"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    

    if (size) myClasses ~= "pagination-"~size;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto myNavId = navId;
    auto myNavClasses = navClasses;
    auto myNavAttributes = navAttributes;
    if (this.ariaLabel) myNavAttributes["aria-label"] = this.ariaLabel;

    return [
      H5Nav(myNavId, myNavClasses, myNavAttributes, 
        H5Ul(myId, myClasses, myAttributes, myContent))].toH5;
  }
}
mixin(ControlCalls!("UIMPaginationControl", "DUIMPaginationControl"));
mixin(ControlCalls!("UIMPagination", "DUIMPaginationControl"));

version(test_uim_controls) { unittest {
  assert(UIMPagination);
  assert(UIMPagination.noId == `<nav><ul class="pagination"></ul></nav>`);
}}
