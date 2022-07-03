module uim.controls.steps.step;

@safe: 
import uim.controls;

class DUIMStepControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results ~= H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMStepControl() { return new DUIMStepControl; }
auto UIMStep() { return new DUIMStepControl; }


