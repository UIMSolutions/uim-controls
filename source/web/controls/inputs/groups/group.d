module uim.controls.inputs.groups.group;

@safe: 
import uim.controls;

class DUIMInputGroupControl : DUIMControl {
  mixin(ControlThis!("UIMInputGroupControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("input-group");
  }

  mixin(AddContent!("TextAddon", "UIMTextAddonControl"));
  O addIconAddon(this O)(string icon) { 
    this.addContent(UIMIconAddonControl.icon(icon)); 
    return cast(O)this; };

  mixin(OProperty!("string", "size"));
  mixin(AddContent!("DatetimeInput", "UIMDatetimeInputControl"));
  mixin(AddContent!("DateInput", "UIMDateInputControl"));
  mixin(AddContent!("EmailInput", "UIMEmailInputControl"));
  mixin(AddContent!("FileInput", "UIMFileInputControl"));
  mixin(AddContent!("ImageInput", "UIMImageInputControl"));
  mixin(AddContent!("MonthInput", "UIMMonthInputControl"));
  mixin(AddContent!("NumberInput", "UIMNumberInputControl"));
  mixin(AddContent!("PasswordInput", "UIMPasswordInputControl"));
  mixin(AddContent!("RangeInput", "UIMRangeInputControl"));
  mixin(AddContent!("ResetInput", "UIMResetInputControl"));
  mixin(AddContent!("SearchInput", "UIMSearchInputControl"));
  mixin(AddContent!("TextInput", "UIMTextInputControl"));
  mixin(AddContent!("TextareaInput", "UIMTextareaInputControl"));
  mixin(AddContent!("TimeInput", "UIMTimeInputControl"));
  mixin(AddContent!("UrlInput", "UIMUrlInputControl"));
  mixin(AddContent!("WeekInput", "UIMWeekInputControl"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (size) myClasses ~= "input-group-"~size;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMInputGroupControl", "DUIMInputGroupControl"));
mixin(ControlCalls!("UIMInputGroup", "DUIMInputGroupControl"));

version(test_uim_controls) { unittest {
    assert(UIMInputGroup);
    assert(UIMInputGroup.noId == `<div class="input-group"></div>`);
  }
}
