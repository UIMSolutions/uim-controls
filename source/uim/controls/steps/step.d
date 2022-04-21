module uim.controls.steps.step;

@safe: 
import uim.controls;

class DUIMStepControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
}
auto UIMStepControl() { return new DUIMStepControl; }