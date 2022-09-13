module uim.controls.cards.title;

@safe: 
import uim.controls;

class DUIMCardTitleControl : DUIMControl {
  mixin(ControlThis!("UIMCardTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("card-title");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      BS5CardTitle(myId, myClasses, myAttributes, myContent)].toH5;  
  }
}
mixin(ControlCalls!("UIMCardTitleControl", "DUIMCardTitleControl"));
mixin(ControlCalls!("UIMCardTitle", "DUIMCardTitleControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardTitle);
    assert(UIMCardTitle.noId == `<h2 class="card-title"></h2>`);
  }
}