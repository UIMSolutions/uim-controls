module uim.controls.pageheaders.pretitle;

@safe: 
import uim.controls;

class DUIMPagePretitleControl : DUIMControl {
  mixin(ControlThis!("UIMPagePretitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["page-pretitle"]);
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMPagePretitleControl", "DUIMPagePretitleControl"));
mixin(ControlCalls!("UIMPagePretitle", "DUIMPagePretitleControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMPagePretitle);
  }
}