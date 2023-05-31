module web.controls.cards.description;

@safe: 
import web.controls;

class DUIMCardDescriptionControl : DUIMControl {
  mixin(ControlThis!("UIMCardDescriptionControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("card-description");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5P(myId, myClasses, myAttributes, myContent)].toH5;  
  }
}
mixin(ControlCalls!("UIMCardDescriptionControl", "DUIMCardDescriptionControl"));
mixin(ControlCalls!("UIMCardDescription", "DUIMCardDescriptionControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardDescription);
    assert(UIMCardDescription.noId == `<h2 class="card-description"></h2>`);
  }
}