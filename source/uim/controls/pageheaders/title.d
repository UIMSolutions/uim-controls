module uim.controls.pageheaders.title;

@safe: 
import uim.controls;

class DUIMPageTitleControl : DUIMControl {
  mixin(ControlThis!("UIMPageTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["page-title"]);
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMPageTitleControl", "DUIMPageTitleControl"));
mixin(ControlCalls!("UIMPageTitle", "DUIMPageTitleControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPageTitle);
  }
}