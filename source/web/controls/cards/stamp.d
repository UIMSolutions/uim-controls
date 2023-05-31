module web.controls.cards.stamp;

@safe: 
import web.controls;

class DUIMCardStampControl : DUIMDivControl {
  mixin(ControlThis!("UIMCardStampControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-stamp"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMCardStampControl", "DUIMCardStampControl"));
mixin(ControlCalls!("UIMCardStamp", "DUIMCardStampControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardStamp);
    assert(UIMCardStamp.noId == `<div class="card-stamp"></div>`);
  }
}

