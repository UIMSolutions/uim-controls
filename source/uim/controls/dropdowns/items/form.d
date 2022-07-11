module uim.controls.dropdowns.items.form;

@safe: 
import uim.controls;

class DUIMDropdownFormControl : DUIMDropdownItemControl {
  this() { super(); }

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
auto UIMDropdownFormControl() { return new DUIMDropdownFormControl; }
auto UIMDropdownForm() { return new DUIMDropdownFormControl; }
