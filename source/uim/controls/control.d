module uim.controls.control;

@safe:
import uim.controls;

interface IControl {
  DH5Obj[] toH5(STRINGAA options = null);
}

class DUIMControl : DH5Obj, IControl {
  this() { initialize; }

  mixin(OProperty!("DUIMControl", "parent"));
  mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled"));

  override void initialize() {}

  // Used before toH5 
  protected string myId;
  protected string[] myClasses;
  protected STRINGAA myAttributes;
  protected DH5Obj[] myContent;

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
