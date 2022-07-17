module uim.controls.forms.select;

@safe: 
import uim.controls;

class DUIMSelectControl : DUIMControl {
  mixin(ControlThis!("UIMSelectControl"));

  mixin(OProperty!("string", "size"));
  mixin(OProperty!("string", "ariaLabel"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-select"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (size) myClasses ~= "form-select-"~size.toLower;

    if (ariaLabel) myAttributes["aria-label"] = ariaLabel;
    if (disabled) myAttributes["disabled"] = "disabled";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Select(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMSelectControl", "DUIMSelectControl"));
mixin(ControlCalls!("UIMSelect", "DUIMSelectControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSelect);

    auto control = UIMSelect;
  }
}
