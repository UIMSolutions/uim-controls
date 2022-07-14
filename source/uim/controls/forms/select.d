module uim.controls.forms.select;

@safe: 
import uim.controls;

class DUIMFormSelectControl : DUIMControl {
  mixin(ControlThis!("UIMFormSelectControl"));

  mixin(OProperty!("string", "size"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-select"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (size) myClasses ~= "form-select-"~size.toLower;
    if (disabled) myAttributes["disabled"] = "disabled";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Label(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFormSelectControl", "DUIMFormSelectControl"));
mixin(ControlCalls!("UIMFormSelect", "DUIMFormSelectControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormSelect);

    auto control = UIMFormSelect;
  }
}
