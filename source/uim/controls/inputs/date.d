module uim.controls.inputs.date;

@safe: 
import uim.controls;

class DUIMDateInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMDateInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"date"]);
  }

  alias value = DUIMInputControl.value;
  O value(this O)(Date newValue) {
    auto txt = "%s-";
    txt ~= newValue.month < 10 ? "0%s-" : "%s-";
    txt ~= newValue.day < 10 ? "0%s" : "%s";
    
    this.value(txt.format(newValue.year, cast(int)newValue.month, newValue.day));
    return cast(O)this;
  }

  O value(this O)(DateTime newValue) {
    auto txt = "%s-";
    txt ~= newValue.month < 10 ? "0%s-" : "%s-";
    txt ~= newValue.day < 10 ? "0%s" : "%s";
    
    this.value(txt.format(newValue.year, cast(int)newValue.month, newValue.day));
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMDateInputControl", "DUIMDateInputControl"));
mixin(ControlCalls!("UIMDateInput", "DUIMDateInputControl"));

version(test_uim_controls) { unittest {
    assert(UIMDateInput);

    auto control = UIMDateInput;
  }
}
