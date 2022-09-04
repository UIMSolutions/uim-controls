module uim.controls.cards.footer;

@safe: 
import uim.controls;

class DUIMCardFooterControl : DUIMControl {
  mixin(ControlThis!("UIMCardFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-footer"]);
  }

  mixin(OProperty!("string", "color"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [BS5CardFooter(myId, myClasses, myAttributes, myContent)].toH5;  
  }
}
mixin(ControlCalls!("UIMCardFooterControl", "DUIMCardFooterControl"));
mixin(ControlCalls!("UIMCardFooter", "DUIMCardFooterControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardFooter);
    assert(UIMCardFooter.noId == `<div class="card-footer"></div>`);

    assert(UIMCardFooter.color("blue").color == "blue");
    assert(UIMCardFooter.noId.color("blue") == `<div class="bg-blue card-footer"></div>`);
  }
}

