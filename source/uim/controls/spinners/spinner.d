module uim.controls.spinners.spinner;

@safe: 
import uim.controls;

class DUIMSpinnerControl : DUIMControl {
  this() { super(); }

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
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    if (color) { myClasses ~= "text-"~color; }
    switch (this.style) {
      case "grow": myClasses ~= "spinner-grow"; break;
      default: myClasses ~= "spinner-border"; break;
    }
    switch (this.size) {
      case "small": myClasses ~= this.style == "grow" ? "spinner-grow-sm" : "spinner-border-sm"; break;
      default: break;
    }

    if (embedded) {
      return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;  
    }
    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;  
  }

}
auto UIMSpinnerControl() { return new DUIMSpinnerControl; }