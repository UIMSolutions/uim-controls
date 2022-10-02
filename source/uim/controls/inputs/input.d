module uim.controls.inputs.input;

@safe: 
import uim.controls;

  
class DUIMInputControl : DUIMControl {
  mixin(ControlThis!("UIMInputControl"));

  mixin(OProperty!("string", "name"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "placeholder"));
  mixin(OProperty!("bool", "required"));

  mixin(OProperty!("string", "description"));
  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "value"));
  // mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("bool", "readonly"));
  mixin(OProperty!("bool", "plaintext"));
  mixin(OProperty!("bool", "rounded"));
  mixin(OProperty!("bool", "flush"));

  // Binding to entity
  mixin(OProperty!("DOOPEntity", "entity"));
  mixin(OProperty!("string", "entityField"));

  // Validation
  mixin(OProperty!("string", "invalidText"));
  mixin(OProperty!("string", "validText"));
  mixin(OProperty!("bool", "valid"));
  mixin(OProperty!("bool", "invalid"));

  // Icons
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "iconColor"));
  mixin(OProperty!("string", "iconPosition"));
  mixin(OProperty!("string", "link"));

  // Help
  mixin(OProperty!("string", "help"));
  mixin(OProperty!("string", "helpColor"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"]);
  }
  
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    this
      .id("input-%s".format(uniform(0, 1000000)));
    
    if (rounded) myClasses ~= "form-control-rounded";
    if (flush) myClasses ~= "form-control-flush";
    if (plaintext) myClasses = ["form-control-plaintext"];
    if (size) myClasses ~= "form-control-"~size.toLower;
    if (valid) myClasses ~= "is-valid";
    else if (invalid) myClasses ~= "is-invalid";      

    if (required) myAttributes["required"] = "required";
    if (disabled) myAttributes["disabled"] = "disabled";
    if (readonly) myAttributes["readonly"] = "readonly";
    if (name) myAttributes["name"] = name;
    if (value) myAttributes["value"] = value;

    if (placeholder) myAttributes["placeholder"] = placeholder;
    if (description) myAttributes["aria-describedby"] = myId;
    // if (entity && entityField) myAttributes["value"] = entity[entityField];
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto results = [H5Input(myId, myClasses, myAttributes)].toH5;

    if (icon) {
      if (!link) {
        if (iconPosition == "both") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results~H5Span(["input-icon-addon"], tablerIcon(icon)); 
        else if (iconPosition == "left") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results;        
        else results ~= H5Span(["input-icon-addon"]~(iconColor ? "text-"~iconColor : null), tablerIcon(icon)); 

        results = [H5Div(["input-icon"], results)].toH5;
      }
      else {
        results = [
          BS5Row(["g-2"], 
            H5Div(["col"], results),
            H5Div(["col-auto"], 
              H5A(["btn btn-white btn-icon"], ["href":link, "aria-label":"Button"], tablerIcon(icon))))].toH5;
      }     
    }       

    if (help) {
      results = [
        BS5Row(["g-2"], 
          H5Div(["col"], results),
          H5Div(["col-auto", "align-self-center"], 
            H5Span(["form-help"]~(helpColor ? "bg-"~helpColor : null), ["data-bs-toggle":"popover", "data-bts-placement":"top", "data-bs-content":help, "data-bs-html":"true"], "?")))].toH5;
    }       

    if (description) results ~= H5Div("passwordHelpBlock", ["form-text"], description);
    
    if (valid && validText) results ~= H5Div(["valid-feedback"], validText);
    if (invalid && invalidText && !valid) results ~= H5Div(["invalid-feedback"], invalidText);

    return results;
  } 
}
mixin(ControlCalls!("UIMInputControl", "DUIMInputControl"));
mixin(ControlCalls!("UIMInput", "DUIMInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMInput);
  assert(UIMInput.noId = `<input class="form-control">`);
}}
