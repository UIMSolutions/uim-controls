module uim.controls.control;

@safe:
import uim.controls;

interface IControl {
  DH5Obj[] toH5(STRINGAA options = null);
}

class DUIMControl : DH5Obj, IControl {
  this() { initialize; }

  override void initialize() {}

  // Used before toH5 
  protected string bufId;
  protected string[] bufClasses;
  protected STRINGAA bufAttributes;
  protected DH5Obj[] bufContent;

  /* O  content(this O)(DH5Obj[] newContent...) {
    this.content(newContent);
    return cast(O)this;
  }
  O content(this O)(string[] newContent...) {
    this.content(newContent);
    return cast(O)this;
  }
  O content(this O)(string[] newContent) {
    this.content(newContent.map!(c => cast(DH5Obj)H5String(c)).array);
    return cast(O)this;
  }

  O addContent(this O)(DH5Obj[] newContent) {
    this.content(this.content~newContent);
    return cast(O)this;
  } */

  void beforeH5(STRINGAA options = null) {
    // Copy initial settings to buffer values
    bufId = this.id.dup;
    bufClasses = this.classes.dup;
    bufAttributes = this.attributes.dup;
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
    }
    return "";
  }
}