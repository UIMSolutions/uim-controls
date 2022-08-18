module uim.controls.cards.title;

@safe: 
import uim.controls;

class DUIMCardTitleControl : DUIMControl {
  mixin(ControlThis!("UIMCardTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-title"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5CardTitle(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCardTitleControl", "DUIMCardTitleControl"));
mixin(ControlCalls!("UIMCardTitle", "DUIMCardTitleControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardTitle);

    auto control = UIMCardTitle;
  }
}