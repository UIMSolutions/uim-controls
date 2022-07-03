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
auto UIMPageHeaderControl() { return new DUIMPageHeaderControl; }
auto UIMPageHeader() { return new DUIMPageHeaderControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
