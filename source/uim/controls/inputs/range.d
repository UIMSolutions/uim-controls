module uim.controls.inputs.range;

@safe: 
import uim.controls;

class DUIMRangeInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMRangeInputControl"));

  mixin(OProperty!("bool", "altLayout"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-range"])
      .attributes(["type":"range"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses = myClasses.remove!(`a == "form-control"`)~"form-range";
    if (altLayout) myClasses = myClasses.remove!(`a == "form-range"`)~"form-control";
  }
}
mixin(ControlCalls!("UIMRangeInputControl", "DUIMRangeInputControl"));
mixin(ControlCalls!("UIMRangeInput", "DUIMRangeInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRangeInput);

    auto control = UIMRangeInput;
  }
}
