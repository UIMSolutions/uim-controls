module uim.controls.paginations.link;

@safe:
import uim.controls;

class DUIMPageLinkControl : DUIMControl {
  mixin(ControlThis!("UIMPageLinkControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMPageLinkControl", "DUIMPageLinkControl"));
mixin(ControlCalls!("UIMPageLink", "DUIMPageLinkControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageLink);
}}

