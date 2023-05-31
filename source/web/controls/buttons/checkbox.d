module web.controls.buttons.checkbox;

@safe: 
import web.controls;

class DUIMCheckboxButtonControl : DUIMControl {
  mixin(ControlThis!("UIMCheckboxButtonControl"));

  override void initialize() {
    super.initialize;

    this
      .inputClasses(["btn-check"])
      .inputAttributes(["type":"checkbox", "autocomplete":"off"])
      .labelClasses(["btn"]);      
  }

  // Settings for components
  mixin(OProperty!("string[]", "inputClasses"));
  mixin(OProperty!("string[string]", "inputAttributes"));
  mixin(OProperty!("string[]", "labelClasses"));
  mixin(OProperty!("string[string]", "labelAttributes"));

  mixin(OProperty!("bool", "checked"));

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
mixin(ControlCalls!("UIMCheckboxButtonControl", "DUIMCheckboxButtonControl"));
mixin(ControlCalls!("UIMCheckboxButton", "DUIMCheckboxButtonControl"));

version(test_uim_controls) { unittest {
  assert(UIMCheckboxButton);
  assert(UIMCheckboxButton.noId == 
    `<input class="btn-check" autocomplete="off" type="checkbox">ˋ~
    ˋ<label class="btn"></label>`);
}}

