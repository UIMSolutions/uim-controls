module uim.controls.paginations.pagination;

@safe:
import uim.controls;

class DUIMPaginationControl : DUIMContainerControl {
  mixin(ControlThis!("UIMPaginationControl"));


  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5ListItem(myId, myClasses, myAttributes, myContent);
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
