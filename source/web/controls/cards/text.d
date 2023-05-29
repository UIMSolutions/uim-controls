module uim.controls.cards.text;

@safe: 
import uim.controls;

class DUIMCardTextControl : DUIMControl {
  mixin(ControlThis!("UIMCardTextControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("card-text");
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
mixin(ControlCalls!("UIMCardTextControl", "DUIMCardTextControl"));
mixin(ControlCalls!("UIMCardText", "DUIMCardTextControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardText);
    assert(UIMCardText.noId == `<h2 class="card-text"></h2>`);
  }
}