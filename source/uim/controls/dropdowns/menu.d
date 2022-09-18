module uim.controls.dropdowns.menu;

@safe: 
import uim.controls;

class DUIMDropdownMenuControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownMenuControl"));

  mixin(OProperty!("bool", "dark"));
  mixin(OProperty!("string", "rounded"));
  mixin(OProperty!("string", "buttonId"));
  mixin(OProperty!("string[]", "colors"));
  mixin(OProperty!("string", "labelledBy"));
  mixin(OProperty!("string", "style"));

  O colors(this O)(string[] newColors...) {
    this.colors(newColors);
    return cast(O)this;
  }

	mixin(MyContent!("divider", "BS5DropdownDivider"));
	mixin(MyContent!("header", "BS5DropdownHeader"));
	mixin(MyContent!("item", "BS5DropdownItem"));
	mixin(MyContent!("link", "BS5DropdownLink"));
	mixin(MyContent!("text", "BS5DropdownText"));

  override void initialize() {
    super.initialize;

    this
      .id("dropdown-menu-%s".format(uniform(0, 1000000)))
      .classes(["dropdown-menu"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (dark) myClasses ~= "dropdown-menu-dark";
    if (rounded) myClasses ~= "rounded-"~rounded;
    if (colors.length > 0 && colors[0].length > 0) myClasses ~= "bg-"~colors[0];
    if (colors.length > 1 && colors[1].length > 0) myClasses ~= "text-"~colors[1];
    if (buttonId) myAttributes["aria-labelledby"] = buttonId;
    else if (labelledBy) myAttributes["aria-labelledby"] = labelledBy;

    myContent.filter!(c => cast(DUIMDropdownItemControl)c).map!(c => c.style(style));
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
    
    if (style ==  "list") {   
      return [H5Ul(myId, myClasses, myAttributes, myContent)].toH5;
    }
    return [H5Div(myId, myClasses, myAttributes, myContent)];
  }
}
mixin(ControlCalls!("UIMDropdownMenuControl", "DUIMDropdownMenuControl"));
mixin(ControlCalls!("UIMDropdownMenu", "DUIMDropdownMenuControl"));

version(test_uim_controls) { unittest {
  assert(UIMDropdownMenu);
  assert(UIMDropdownMenu.noId == `<div class="dropdown-menu"></div>`);

  assert(UIMDropdownMenu.dark(true).dark);
  assert(UIMDropdownMenu.noId.dark(true) == `<div class="dropdown-menu dropdown-menu-dark"></div>`);

  assert(UIMDropdownMenu.buttonId("abc").buttonId == `abc`);
  assert(UIMDropdownMenu.noId.buttonId("abc") == `<div class="dropdown-menu" aria-labelledby="abc"></div>`);
}}
