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
  mixin(OProperty!("bool", "important"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    auto bufClasses = this.classes.dup;
    if (type || "alertType" in options) { bufClasses ~= "alert-"~options.get("alertType", this.type); }
    if (dismissible) { bufClasses ~= "alert-dismissible"; }
    if (important) { bufClasses ~= "alert-important"; }

    return [BS5Alert(id, bufClasses, attributes, content)].toH5;
  }
}
auto UIMAlertControl() { return new DUIMAlertControl; }
