module uim.controls.cards.subtitle;

@safe: 
import uim.controls;

class DUIMCardSubtitleControl : DUIMSpanControl {
  mixin(ControlThis!("UIMCardSubtitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("card-subtitle");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMCardSubtitleControl", "DUIMCardSubtitleControl"));
mixin(ControlCalls!("UIMCardSubtitle", "DUIMCardSubtitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMCardSubtitle);
  assert(UIMCardSubtitle.noId == `<span class="card-subtitle"></span>`);
}}