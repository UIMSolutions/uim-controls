module uim.controls.cards.card;

@safe: 
import uim.controls;

class DUIMCardControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .attributes(["href":"#"]);
  }
}
auto UIMCardControl() { return new DUIMCardControl; }