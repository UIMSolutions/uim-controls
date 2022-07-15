module uim.controls.cards.footer;

@safe: 
import uim.controls;

class DUIMCardFooterControl : DUIMContainerControl {
  mixin(ControlThis!("UIMCardFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-footer"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5CardFooter(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCardFooterControl", "DUIMCardFooterControl"));
mixin(ControlCalls!("UIMCardFooter", "DUIMCardFooterControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCardFooter);

    auto control = UIMCardFooter;
  }
}