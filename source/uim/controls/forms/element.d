module uim.controls.forms.element;

@safe: 
import uim.controls;

// Root for all form input elements
class DUIMFormElementControl : DUIMControl {
  mixin(ControlThis!("UIMFormElementControl"));

  mixin(OProperty!("string", "name"));
  mixin(OProperty!("string", "forElement"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (forElement) myAttributes["for"] = forElement;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Label(myId, myClasses, myAttributes, myContent)].toH5;
  }
}

version(test_uim_controls) {
  unittest {
    assert(UIMFormElement);

    auto control = UIMFormElement;
  }
}
