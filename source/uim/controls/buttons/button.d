module uim.controls.buttons.button;

@safe: 
import uim.controls;

class DUIMButtonControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["alert-link"])
      .attributes(["href":"#"]);
  }
}
auto UIMButtonControl() { return new DUIMButtonControl; }