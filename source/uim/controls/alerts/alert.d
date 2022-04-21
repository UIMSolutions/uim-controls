module uim.controls.alerts.alert;

@safe: 
import uim.controls;

class DUIMAlertControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["alert"])
      .attributes(["role":"alert"]);
  }
  
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("bool", "dismissible"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    auto bufClasses = this.classes.dup;
    if (type || "alertType" in options) { bufClasses ~= "alerts "~options.get("alertType", this.type); }
    if (dismissible || "alertDismissible" in options) { bufClasses ~= "alert-dismissible"; }

    
    results ~= H5Div(bufId, bufClasses, bufAttributes, (status ? H5Span(["badge", "bg-"~status]) : null)~content);

    return results;
  }
}
auto UIMAlertControl() { return new DUIMAlertControl; }
