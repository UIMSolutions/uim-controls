module uim.controls.cards.stampicon;

@safe: 
import uim.controls;

class DUIMCardStampIconControl : DUIMDivControl {
  mixin(ControlThis!("UIMCardStampIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-stamp-icon"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMCardStampIconControl", "DUIMCardStampIconControl"));
mixin(ControlCalls!("UIMCardStampIcon", "DUIMCardStampIconControl"));

version(test_uim_controls) { unittest {
    assert(UIMCardStampIcon);
    assert(UIMCardStampIcon.noId == `<div class="card-stamp"></div>`);
  }
}

