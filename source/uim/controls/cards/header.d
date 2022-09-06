module uim.controls.cards.header;

@safe: 
import uim.controls;

class DUIMCardHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMCardHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-header"]);
  }

  mixin(OProperty!("string", "color"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [BS5CardHeader(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMCardHeaderControl", "DUIMCardHeaderControl"));
mixin(ControlCalls!("UIMCardHeader", "DUIMCardHeaderControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardHeader);
    assert(UIMCardHeader.noId == `<div class="card-header"></div>`);

    assert(UIMCardHeader.color("blue").color == "blue");
    assert(UIMCardHeader.noId.color("blue") == `<div class="bg-blue card-header"></div>`);
  }
}