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
  mixin(OProperty!("string", "style"));

  override void initialize() {
    super.initialize;

    this
      .classes(["dropdown-item"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color.toLower;
    if (active) myClasses ~= "active";
    if (disabled) myClasses ~= "disabled";

    if (link) myAttributes["href"] = link;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto coreContent = H5A(myId, myClasses, myAttributes, 
      (icon ? H5String(tablerIcon(icon)~"&nbsp;") : null)~myContent~(badge || badgeColor ? UIMBadge(["ms-auto"]).color(badgeColor).content(badge) : null));

    if (style == "list") {
      return [
        H5Li(coreContent)
      ].toH5;
    }
    return [
      coreContent
    ].toH5;
  }
}
mixin(ControlCalls!("UIMDropdownItemControl", "DUIMDropdownItemControl"));
mixin(ControlCalls!("UIMDropdownItem", "DUIMDropdownItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMDropdownItem);
    writeln(UIMDropdownItem);
    writeln(UIMDropdownItem.style("list"));

    auto control = UIMDropdownItem;
    // TODO
  }
}
