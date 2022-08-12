module uim.controls.dropdowns.items.item;

@safe: 
import uim.controls;

class DUIMDropdownItemControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownItemControl"));

  mixin(OProperty!("bool", "isDivider"));
  mixin(OProperty!("bool", "isHeader"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "color"));
/*   mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled")); */
  mixin(OProperty!("string", "badge"));
  mixin(OProperty!("string", "badgeColor"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color.toLower;
    if (active) myClasses ~= "active";
    if (disabled) myClasses ~= "disabled";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      BS5DropdownLink(myId, myClasses, myAttributes, 
        (icon ? H5String(tablerIcon(icon)~"&nbsp;") : null)~myContent~(badge || badgeColor ? UIMBadge.addClasses(["ms-auto"]).color(badgeColor).content(badge) : null))
    ].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownItemControl", "DUIMDropdownItemControl"));
mixin(ControlCalls!("UIMDropdownItem", "DUIMDropdownItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMDropdownItem);

    auto control = UIMDropdownItem;
    // TODO
  }
}
