module uim.controls.forms.inputs.text;

@safe: 
import uim.controls;

class DUIMTextInputControl : DUIMFormInputControl {
  mixin(ControlThis!("UIMTextInputControl"));

  mixin(OProperty!("string", "placeholder"));
  mixin(OProperty!("string", "invalidText"));
  mixin(OProperty!("string", "validText"));
  mixin(OProperty!("bool", "valid"));
  mixin(OProperty!("bool", "invalid"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "iconPosition"));
  mixin(OProperty!("string", "link"));

  override void initialize() {
    super.initialize;

    this
      .addClasses(["form-control"])
      .attributes(["type":"text"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (valid) myClasses ~= "is-valid";
    else if (invalid) myClasses ~= "is-invalid";

    if (placeholder) myAttributes["placeholder"] = placeholder;
  }

   override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (icon) {
      if (!link) {
        if (iconPosition == "both") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results~H5Span(["input-icon-addon"], tablerIcon(icon)); 
        else if (iconPosition == "left") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results;        
        else results ~= H5Span(["input-icon-addon"], tablerIcon(icon)); 

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

    if (valid && validText) results ~= H5Div(["valid-feedback"], validText);
    if (invalid && invalidText && !valid) results ~= H5Div(["invalid-feedback"], invalidText);

    return results;
  } 
}
mixin(ControlCalls!("UIMTextInputControl", "DUIMTextInputControl"));
mixin(ControlCalls!("UIMTextInput", "DUIMTextInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTextInput);

    auto control = UIMTextInput;
  }
}
