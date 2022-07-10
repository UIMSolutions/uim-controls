module uim.controls.paginations.pagination;

@safe:
import uim.controls;

class DUIMPaginationControl : DUIMContainerControl {
  mixin(ControlThis!("UIMPaginationControl"));

  mixin(OProperty!("string", "ariaLabel"));
  mixin(OProperty!("string", "size"));
  
  override void initialize() {
    super.initialize;

    this
      .classes(["pagination"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    

    if (size) myClasses ~= "pagination-"~size;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Nav(["aria-label":this.ariaLabel], 
        H5Ul(myId, myClasses, myAttributes, myContent));
  }
}
mixin(ControlCalls!("UIMPaginationControl", "DUIMPaginationControl"));
mixin(ControlCalls!("UIMPagination", "DUIMPaginationControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPagination);
    
    auto control = UIMPagination;
    // TODO
  }
}
