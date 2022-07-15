module uim.controls.cards.body_;

@safe: 
import uim.controls;

class DUIMCardBodyControl : DUIMContainerControl {
  mixin(ControlThis!("UIMCardBodyControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-body"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5CardBody(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCardBodyControl", "DUIMCardBodyControl"));
mixin(ControlCalls!("UIMCardBody", "DUIMCardBodyControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMCardBody);

    auto control = UIMCardBody;
  }
}