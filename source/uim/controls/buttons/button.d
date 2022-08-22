module uim.controls.buttons.button;

@safe: 
import uim.controls;

class DUIMButtonControl : DUIMControl {
  mixin(ControlThis!("UIMButtonControl"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "ghost"));
  mixin(OProperty!("bool", "outline"));
  mixin(OProperty!("bool", "square"));
  mixin(OProperty!("bool", "pill"));
  mixin(OProperty!("bool", "loading"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "value"));
  mixin(OProperty!("string", "tooltip"));

  override void initialize() {
    super.initialize;

    this
      .classes(["btn"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) { myClasses ~= ["btn-"~(ghost ? "ghost-" : "")~(outline ? "outline-" : "")~color]; }
    if (disabled) { myClasses ~= ["disabled"]; }
    if (size) { myClasses ~= ["btn-"~size]; }
    if (pill) { myClasses ~= ["btn-pill"]; }
    if (loading) { myClasses ~= ["btn-loading"]; }
    if (square) { myClasses ~= ["btn-square"]; }
    // if (icon && !title) { myClasses ~= ["btn-icon"]; }

    if (link) { this.type("link"); }

    if (value) {
      this.type("button");
      myAttributes["type"] = "button";
      myAttributes["value"] = value;
    }

    if (tooltip) {
      myAttributes["title"] = tooltip;
    }

    if (title) {
      myContent ~= H5String((this.icon ? tablerIcon(this.icon)~" ": null)~this.title);
    }
    else if (icon) {
      myContent ~= H5String(this.icon ? tablerIcon(this.icon) : null);
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    switch (type) {
      case "link":
        myAttributes["href"] = link;
        myAttributes["role"] = "button";
        return [H5A(myId, myClasses, myAttributes, myContent)].toH5;
      case "input":
        myAttributes["type"] = type;
        myAttributes["value"] = value;
        return [H5Input(myId, myClasses, myAttributes, myContent)].toH5;
      case "button":
        myAttributes["type"] = "button";
        myAttributes["value"] = value;
        return [H5Input(myId, myClasses, myAttributes, myContent)].toH5;
      case "reset":
        myAttributes["type"] = type;
        myAttributes["value"] = value;
        return [H5Input(myId, myClasses, myAttributes, myContent)].toH5;
      case "submit":
        myAttributes["type"] = type;
        myAttributes["value"] = value;
        return [H5Input(myId, myClasses, myAttributes, myContent)].toH5;
      default: 
        return [H5Button(myId, myClasses, myAttributes, myContent)].toH5;      
      }
  }
}
mixin(ControlCalls!("UIMButtonControl", "DUIMButtonControl"));
mixin(ControlCalls!("UIMButton", "DUIMButtonControl"));

version(test_uim_controls) { unittest {
  assert(UIMButton);

  mixin(TestControlBooleanAttributes!("UIMButton", [
    "ghost", "outline", "square", "pill", "loading"
  ])); 

  mixin(TestControlStringAttributes!("UIMButton", [
    "color", "icon", "link", "size", "title", "type", "value", "tooltip"
  ]));
}}
