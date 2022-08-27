module uim.controls.dropdowns.items.form;

@safe: 
import uim.controls;

class DUIMDropdownFormControl : DUIMDropdownItemControl {
  mixin(ControlThis!("UIMDropdownForm"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Form(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownFormControl", "DUIMDropdownFormControl"));
mixin(ControlCalls!("UIMDropdownForm", "DUIMDropdownFormControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownForm);
}}
