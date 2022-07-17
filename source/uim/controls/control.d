module uim.controls.control;

@safe:
import uim.controls;

interface IControl {
  DH5Obj[] toH5(STRINGAA options = null);
  O active(this O)(bool newValue);
  O disabled(this O)(bool newValue);
}

class DUIMControl : DH5Obj, IControl {
  this() { initialize; }

  mixin(OProperty!("DUIMControl", "parent"));
  mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled"));

  mixin(OProperty!("string", "aria-autocomplete"));
aria-checked
aria-disabled
aria-errormessage
aria-expanded
aria-haspopup
aria-hidden
aria-invalid
aria-label
aria-level
aria-modal
aria-multiline
aria-multiselectable
aria-orientation
aria-placeholder
aria-pressed
aria-readonly
aria-required
aria-selected
aria-sort
aria-valuemax
aria-valuemin
aria-valuenow
aria-valuetext

  override void initialize() {}

  // Used before toH5 
  protected string myId;
  protected string[] myClasses;
  protected STRINGAA myAttributes;
  protected DH5Obj[] myContent;
  protected DH5Obj myResult;

  void beforeH5(STRINGAA options = null) {
    // Copy initial settings to buffer values
    myId = this.id.dup;
    myClasses = this.classes.dup;
    myAttributes = this.attributes.dup;
    myContent = this.content.dup;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    beforeH5(options);
    return null;
  }

  override string toString() {
    return toString(null);
  }
  override string toString(STRINGAA options) {
    if (auto h5 = toH5(options)) {
      return h5.toString;
    } return "";
  }
}

version(test_uim_controls) {
  unittest {
    // TODO 
  }
}
