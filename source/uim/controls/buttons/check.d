module uim.controls.buttons.check;

@safe: 
import uim.controls;

class DUIMButtonCheckControl : DUIMControl {
  mixin(ControlThis!("UIMButtonCheckControl"));

  override void initialize() {
    super.initialize;

    this
      .inputClasses(["btn-check"])
      .inputAttributes(["type":"checkbox", "autocomplete":"off"])
      .labelClasses(["btn"])
      .labelAttributes(["btn-check"]);      
  }

  // Settings for components
  mixin(OProperty!("string[]", "inputClasses"));
  mixin(OProperty!("string[string]", "inputAttributes"));
  mixin(OProperty!("string[]", "labelClasses"));
  mixin(OProperty!("string[string]", "labelAttributes"));

  mixin(OProperty!("bool", "checked"));
  mixin(OProperty!("bool", "disabled"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto myInputAttributes = inputAttributes.dup;
    if (checked) myInputAttributes["checked"] = "checked";
    if (disabled) myInputAttributes["disabled"] = "disabled";

    auto myLabelAttributes = labelAttributes.dup;
    myLabelAttributes["for"] = myId;

    return [
      H5Input(myId, inputClasses, inputAttributes),
      H5Label(labelClasses, myLabelAttributes, myContent)
    ].toH5;  
  }
}
mixin(ControlCalls!("UIMButtonCheckControl", "DUIMButtonCheckControl"));
mixin(ControlCalls!("UIMButtonCheck", "DUIMButtonCheckControl"));

version(test_uim_controls) { unittest {
  assert(UIMButtonCheck);
  assert(UIMButtonCheck.noId == `<div class="btn-check"></div>`);
}}

