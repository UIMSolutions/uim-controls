module uim.controls.cards.header;

@safe: 
import uim.controls;

class DUIMCardHeaderControl : DUIMContainerControl {
  mixin(ControlThis!("UIMCardHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-header"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5CardHeader(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCardHeaderControl", "DUIMCardHeaderControl"));
mixin(ControlCalls!("UIMCardHeader", "DUIMCardHeaderControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCardHeader);

    auto control = UIMCardHeader;
  }
}