module uim.controls.cards.card;

@safe: 
import uim.controls;

class DUIMCardControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMCardControl() { return new DUIMCardControl; }