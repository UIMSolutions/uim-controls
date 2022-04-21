module uim.controls.empties.subtitle;

@safe: 
import uim.controls;

class DUIMEmptySubtitleControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMEmptySubtitleControl() { return new DUIMEmptySubtitleControl; }