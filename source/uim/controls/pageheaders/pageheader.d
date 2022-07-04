module uim.controls.pageheaders.pageheader;

@safe: 
import uim.controls;

class DUIMPageHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMPageHeaderControl"));

  override void initialize() {
    super.initialize;
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMPageHeaderControl", "DUIMPageHeaderControl"));
mixin(ControlCalls!("UIMPageHeader", "DUIMPageHeaderControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
