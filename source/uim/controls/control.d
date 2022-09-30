module uim.controls.control;

@safe:
import uim.controls;

interface IControl {
  DH5Obj[] toH5(STRINGAA options = null);
  O active(this O)(bool newValue);
  O disabled(this O)(bool newValue);

  // Aria 
  O ariaAutocomplete(this O)(string newValue);
  O ariaChecked(this O)(string newValue);
  O ariaDisabled(this O)(string newValue);
  O ariaErrormessage(this O)(string newValue);
  O ariaExpanded(this O)(string newValue);
  O ariaHaspopup(this O)(string newValue);
  O ariaHidden(this O)(string newValue);
  O ariaInvalid(this O)(string newValue);
  O ariaLabel(this O)(string newValue);
  O ariaLevel(this O)(string newValue);
  O ariaModal(this O)(string newValue);
  O ariaMultiline(this O)(string newValue);
  O ariaMultiselectable(this O)(string newValue);
  O ariaOrientation(this O)(string newValue);
  O ariaPlaceholder(this O)(string newValue);
  O ariaPressed(this O)(string newValue);
  O ariaReadonly(this O)(string newValue);
  O ariaRequired(this O)(string newValue);
  O ariaSelected(this O)(string newValue);
  O ariaSort(this O)(string newValue);
  O ariaValuemax(this O)(string newValue);
  O ariaValuemin(this O)(string newValue);
  O ariaValuenow(this O)(string newValue);
  O ariaValuetext(this O)(string newValue);
}

class DUIMControl : DH5Obj, IControl {
  this() { super(); }

  mixin(OProperty!("DUIMControl", "parent"));
  mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("STRINGAA", "cssStyles"));

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

  O noId(this O)(){ this.id(null);
    _html.each!(c => c.id(null)); 
    return cast(O)this; }

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

    if (active)   this.disabled(false); // Active or disabled 
    if (disabled) this.active(false);

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

    if (!cssStyles.empty) { myAttributes["style"] = cssStyles.keys.map!(key => "%s:%s;".format(key, cssStyles[key])).join(); } 
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
auto UIMControl() { return new DUIMControl; };

version(test_uim_controls) { unittest {
  mixin(TestControlBooleanAttributes!("UIMControl", 
    ["active", "disabled"]));

  mixin(TestControlStringAttributes!("UIMControl", 
    ["ariaAutocomplete", "ariaChecked", "ariaDisabled", "ariaErrormessage", "ariaExpanded", "ariaHaspopup", "ariaHidden", "ariaInvalid", "ariaLabel", "ariaLevel", "ariaModal", "ariaMultiline", "ariaMultiselectable", "ariaOrientation", "ariaPlaceholder", "ariaPressed", "ariaReadonly", "ariaRequired", "ariaSelected", "ariaSort", "ariaValuemax", "ariaValuemin", "ariaValuenow", "ariaValuetext", "ariaRole", "ariaRoleDescription"]));
}}
