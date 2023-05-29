module uim.controls.cards.body_;

@safe: 
import uim.controls;

class DUIMCardBodyControl : DUIMControl {
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
    super.toH5(options);

    return [
      BS5CardBody(myId, myClasses, myAttributes, myContent)].toH5; 
  }
}
mixin(ControlCalls!("UIMCardBodyControl", "DUIMCardBodyControl"));
mixin(ControlCalls!("UIMCardBody", "DUIMCardBodyControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardBody);
    assert(UIMCardBody.noId == `<div class="card-body"></div>`);
  }
}