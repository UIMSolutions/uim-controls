module web.controls.rows.row;

@safe: 
import web.controls;

class DUIMRowControl : DUIMControl {
  mixin(ControlThis!("UIMRow"));

  override void initialize() {
    super.initialize;
    this
      .classes("row");
  }

  mixin(OProperty!("bool", "deck"));
  mixin(OProperty!("bool", "cards"));

  mixin(AddContent!("Col", "UIMCol"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (deck) myClasses ~= "row-deck";
    if (cards) myClasses ~= "row-cards";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMRowControl", "DUIMRowControl"));
mixin(ControlCalls!("UIMRow", "DUIMRowControl"));

version(test_uim_controls) { unittest {
  assert(UIMRow);
  assert(UIMRow.noId == `<div class="row"></div>`);
  assert(UIMRow.deck(true).noId == `<div class="row row-deck"></div>`);
  assert(UIMRow.cards(true).noId == `<div class="row row-cards"></div>`);
}}
