module uim.controls.cards.status;

@safe: 
import uim.controls;

class DUIMCardStatusControl : DUIMControl {
  mixin(ControlThis!("UIMCardStatusControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-status"]);
  }

  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "color"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (position) myClasses ~= "card-status-"~position;
    if (color) myClasses ~= "bg-"~color;      
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);  
  }
}
mixin(ControlCalls!("UIMCardStatusControl", "DUIMCardStatusControl"));
mixin(ControlCalls!("UIMCardStatus", "DUIMCardStatusControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardStatus);

    auto control = UIMCardStatus;
  }
}