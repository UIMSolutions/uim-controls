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
  mixin(OProperty!("STRINGAA", "styles"));

  mixin(OProperty!("string", "ariaAutocomplete"));
  mixin(OProperty!("string", "ariaChecked"));
  mixin(OProperty!("string", "ariaDisabled"));
  mixin(OProperty!("string", "ariaErrormessage"));
  mixin(OProperty!("string", "ariaExpanded"));
  mixin(OProperty!("string", "ariaHaspopup"));
  mixin(OProperty!("string", "ariaHidden"));
  mixin(OProperty!("string", "ariaInvalid"));
  mixin(OProperty!("string", "ariaLabel"));
  mixin(OProperty!("string", "ariaLevel"));
  mixin(OProperty!("string", "ariaModal"));
  mixin(OProperty!("string", "ariaMultiline"));
  mixin(OProperty!("string", "ariaMultiselectable"));
  mixin(OProperty!("string", "ariaOrientation"));
  mixin(OProperty!("string", "ariaPlaceholder"));
  mixin(OProperty!("string", "ariaPressed"));
  mixin(OProperty!("string", "ariaReadonly"));
  mixin(OProperty!("string", "ariaRequired"));
  mixin(OProperty!("string", "ariaSelected"));
  mixin(OProperty!("string", "ariaSort"));
  mixin(OProperty!("string", "ariaValuemax"));
  mixin(OProperty!("string", "ariaValuemin"));
  mixin(OProperty!("string", "ariaValuenow"));
  mixin(OProperty!("string", "ariaValuetext"));

  mixin(OProperty!("string", "ariaRole"));
  mixin(OProperty!("string", "ariaRoleDescription"));

/*
aria-dropeffect
aria-grabbed
Relationship attributes
aria-activedescendant
aria-colcount
aria-colindex
aria-colspan
aria-controls
aria-describedby
aria-description
aria-details
aria-errormessage
aria-flowto
aria-labelledby
aria-owns
aria-posinset
aria-rowcount
aria-rowindex
aria-rowspan
aria-setsize
*/
  override void initialize() {
    super.initialize;

    this
      .id("control-%s".format(uniform(0, 1_000_000)));
  }

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

    if (ariaAutocomplete) myAttributes["aria-autocomplete"] = ariaAutocomplete;
    if (ariaChecked) myAttributes["aria-checked"] = ariaChecked;
    if (ariaDisabled) myAttributes["aria-disabled"] = ariaDisabled;
    if (ariaErrormessage) myAttributes["aria-errormessage"] = ariaErrormessage;
    if (ariaExpanded) myAttributes["aria-expanded"] = ariaExpanded;
    if (ariaHaspopup) myAttributes["aria-haspopup"] = ariaHaspopup;
    if (ariaHidden) myAttributes["aria-hidden"] = ariaHidden;
    if (ariaInvalid) myAttributes["aria-invalid"] = ariaInvalid;
    if (ariaLabel) myAttributes["aria-label"] = ariaLabel;
    if (ariaLevel) myAttributes["aria-level"] = ariaLevel;
    if (ariaModal) myAttributes["aria-modal"] = ariaModal;
    if (ariaMultiline) myAttributes["aria-multiline"] = ariaMultiline;
    if (ariaMultiselectable) myAttributes["aria-multiselectable"] = ariaMultiselectable;
    if (ariaOrientation) myAttributes["aria-orientation"] = ariaOrientation;
    if (ariaPlaceholder) myAttributes["aria-placeholder"] = ariaPlaceholder;
    if (ariaPressed) myAttributes["aria-pressed"] = ariaPressed;
    if (ariaReadonly) myAttributes["aria-readonly"] = ariaReadonly;
    if (ariaRequired) myAttributes["aria-required"] = ariaRequired;
    if (ariaSelected) myAttributes["aria-selected"] = ariaSelected;
    if (ariaSort) myAttributes["aria-sort"] = ariaSort;
    if (ariaValuemax) myAttributes["aria-valuemax"] = ariaValuemax;
    if (ariaValuemin) myAttributes["aria-valuemin"] = ariaValuemin;
    if (ariaValuenow) myAttributes["aria-valuenow"] = ariaValuenow;
    if (ariaValuetext) myAttributes["aria-valuetext"] = ariaValuetext;

    if (ariaRole) myAttributes["aria-role"] = ariaRole;
    if (ariaRoleDescription) myAttributes["aria-roledescription"] = ariaRoleDescription;

    if (!styles.empty) { myAttributes["style"] = styles.keys.map!(key => "%s:%s;".format(key, styles["key"])).join(); } 
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

version(test_uim_controls) { unittest {
    // TODO 
  }
}
