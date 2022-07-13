module uim.controls.spinners.spinner;

@safe: 
import uim.controls;

class DUIMSpinnerControl : DUIMControl {
  mixin(ControlThis!("UIMSpinner"));

  mixin(OProperty!("string", "color")); 
  mixin(OProperty!("string", "size")); // normal, small
  mixin(OProperty!("string", "style")); // border , grow
  mixin(OProperty!("bool", "embedded")); 

  override void initialize() {
    super.initialize;

    this
      .attributes(["role":"status"])
      .size("normal")
      .style("border");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (color) { myClasses ~= "text-"~color.toLower; }
    switch (this.style) {
      case "grow": myClasses ~= "spinner-grow"; break;
      default: myClasses ~= "spinner-border"; break;
    }
    switch (this.size) {
      case "small": myClasses ~= this.style == "grow" ? "spinner-grow-sm" : "spinner-border-sm"; break;
      default: break;
    }

    return results~
      (embedded ? H5Span(myId, myClasses, myAttributes, myContent)
                : H5Div(myId, myClasses, myAttributes, myContent));  
  }

}
mixin(ControlCalls!("UIMSpinnerControl", "DUIMSpinnerControl"));
mixin(ControlCalls!("UIMSpinner", "DUIMSpinnerControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSpinner);

    auto control = UIMSpinner;
  }
}
