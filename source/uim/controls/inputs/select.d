module uim.controls.inputs.select;

@safe: 
import uim.controls;

class DUIMSelectControl : DUIMInputControl {
  mixin(ControlThis!("UIMSelectControl"));

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
    super.toH5(options);

    return [H5Select(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMSelectControl", "DUIMSelectControl"));
mixin(ControlCalls!("UIMSelect", "DUIMSelectControl"));

version(test_uim_controls) { unittest {
  assert(UIMSelect);
  assert(UIMSelect.noId == `<select class="form-select"></figure>`);
}}
