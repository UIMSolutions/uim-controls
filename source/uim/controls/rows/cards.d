module uim.controls.rows.cards;

@safe: 
import uim.controls;

class DUIMRowCardsControl : DUIMRowControl {
  mixin(ControlThis!("UIMRowCards"));

  override void initialize() {
    super.initialize;
    this
      .classes("row")
      .cards(true);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMRowCardsControl", "DUIMRowCardsControl"));
mixin(ControlCalls!("UIMRowCards", "DUIMRowCardsControl"));

version(test_uim_controls) { unittest {
  assert(UIMRowCards);
  assert(UIMRowCards.noId == `<div class="row row-cards"></div>`);
}}
