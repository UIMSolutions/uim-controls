module uim.controls.rows.deck;

@safe: 
import uim.controls;

class DUIMRowDeckControl : DUIMRowControl {
  mixin(ControlThis!("UIMRowDeck"));

  override void initialize() {
    super.initialize;
    this
      .classes("row")
      .deck(true);
  }

  mixin(AddContent!("Col", "UIMCol"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMRowDeckControl", "DUIMRowDeckControl"));
mixin(ControlCalls!("UIMRowDeck", "DUIMRowDeckControl"));

version(test_uim_controls) { unittest {
  assert(UIMRowDeck);
  assert(UIMRowDeck.noId == `<div class="row row-deck"></div>`);
}}
