module uim.controls.inputs.number;

@safe: 
import uim.controls;

class DUIMNumberInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMNumberInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"number"]);
  }

  alias value = DUIMInputControl.value;
  O value(this O)(int newValue) {
    this.value(to!string(newValue));
    return cast(O)this;
  }
  O value(this O)(double newValue) {
    this.value(to!string(newValue));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMNumberInputControl", "DUIMNumberInputControl"));
mixin(ControlCalls!("UIMNumberInput", "DUIMNumberInputControl"));

version(test_uim_controls) { unittest {
    assert(UIMNumberInput);

    auto control = UIMNumberInput;
  }
}
