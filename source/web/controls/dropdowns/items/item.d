module web.controls.dropdowns.items.item;

@safe: 
import web.controls;

class DUIMDropdownItemControl : DUIMControl {
  mixin(ControlThis!("UIMDropdownItemControl"));

  mixin(OProperty!("bool", "isDivider"));
  mixin(OProperty!("bool", "isHeader"));
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string[]", "colors"));
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
    if (colors) myClasses ~= (colors[0].length > 0 ? ["bg-"~colors[0].toLower] : null)~(colors.length > 1 ? ["text-"~colors[1].toLower] : null);
    if (active) myClasses ~= "active";
    if (disabled) myClasses ~= "disabled";

    if (link) {
      myAttributes["href"] = link;
      this
        .style("link");
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto coreContent = H5A(myId, myClasses, myAttributes, 
      (icon ? H5String(tablerIcon(icon)~"&nbsp;") : null)~
      myContent~
      (badge || badgeColor ? UIMBadge(["ms-auto"]).color(badgeColor).content(badge) : null));

    switch(style) {
      case "list": return [H5Li(coreContent)].toH5;
      case "link": return [coreContent].toH5;
      default: return [coreContent].toH5;
    }
  }
}
mixin(ControlCalls!("UIMDropdownItemControl", "DUIMDropdownItemControl"));
mixin(ControlCalls!("UIMDropdownItem", "DUIMDropdownItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMDropdownItem);
    assert(UIMDropdownItem.style("list").noId == `<li><a class="dropdown-item"></a></li>`);
    assert(UIMDropdownItem.noId == `<div><a class="dropdown-item"></a></div>`);
    assert(UIMDropdownItem.style("link").noId == `<a class="dropdown-item"></a>`);
    assert(UIMDropdownItem.link("/server/test").noId == `<a class="dropdown-item" href="/server/test"></a>`);

    mixin(TestControlBooleanAttributes!("UIMDropdownItem", [
      "isDivider", "isHeader", "active", "disabled"
    ]));

    mixin(TestControlStringAttributes!("UIMDropdownItem", [
      "link", "icon", "color", "badge", "badgeColor", "style"     
    ]));
  }
}
