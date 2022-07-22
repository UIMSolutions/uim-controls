module uim.controls.switchicons.switchicon;

@safe: 
import uim.controls;

class DUIMSwitchIconControl : DUIMControl {
  mixin(ControlThis!("UIMSwitchIconControl"));

  mixin(OProperty!("string", "iconOne"));
  mixin(OProperty!("string", "iconTwo"));

  mixin(OProperty!("string[]", "classesOne"));
  mixin(OProperty!("string[]", "classesTwo"));

  override void initialize() {
    super.initialize;

    this
      .classes(["switch-icon"])
      .attributes(["data-bs-toggle":"switch-icon"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Button(myId, myClasses, myAttributes, 
        H5Span(["switch-icon-a"]~classesOne, tablerIcon(iconOne)),
        H5Span(["switch-icon-b"]~classesTwo, tablerIcon(iconTwo)));
  }
}
mixin(ControlCalls!("UIMSwitchIconControl", "DUIMSwitchIconControl"));
mixin(ControlCalls!("UIMSwitchIcon", "DUIMSwitchIconControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSwitchIcon);

    auto control = UIMSwitchIcon;
    // TODO
  }
}


