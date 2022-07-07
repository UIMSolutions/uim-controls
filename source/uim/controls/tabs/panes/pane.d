module uim.controls.tabs.panes.pane;

@safe:
import uim.controls;

class DUIMTabPaneControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string[]", "tabClasses"));
  mixin(OProperty!("string[]", "tabLinkClasses"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "tooltip"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "key"));
  mixin(OProperty!("string", "path"));
  mixin(OProperty!("bool", "isDropdown"));
  mixin(OProperty!("string", "position"));

  mixin(OProperty!("string[]", "actions"));

  mixin(OProperty!("bool", "showHeader"));
  mixin(OProperty!("DH5Obj[]", "header"));
  mixin(OProperty!("bool", "showFooter"));
  mixin(OProperty!("DH5Obj[]", "footer"));

  mixin(OProperty!("string", "border"));
  mixin(OProperty!("string", "borderColor"));

  mixin(OProperty!("string", "badge"));
  mixin(OProperty!("string", "badgeColor"));

  override void initialize() {
    super.initialize;

    this
      .classes(["tab-pane"])
      .attributes(["role":"tabpanel"])
      .showHeader(true)
      .showFooter(true)
      .badgeColor("primary");
  }

  DH5Obj tabHeader(STRINGAA options = null) {
    auto navLink = H5A(["nav-link"]~tabLinkClasses, 
      ["href":"#"~id, "data-bs-toggle":"tab", "role":"tab"], 
      (icon ? tablerIcon(icon)~"&nbsp;" : "")~title~(this.badge ? BS5Badge(["badge-"~this.badgeColor], this.badge).toString : null));

    if (tooltip) { navLink.attribute("title", tooltip); }
    if (active) { 
      navLink
        .addClasses("active")
        .attribute("aria-selected", "true"); }
    else {
      navLink
        .attribute("tabindex", "-1")
        .attribute("aria-selected", "false"); }

    auto navItem = H5Li(["nav-item"]~tabClasses, 
        navLink
      );

    switch(position) { 
      case "left": navItem.addClasses("me-auto"); break;
      case "right": navItem.addClasses("ms-auto");  break;
      default: break;
    }

    return navItem;
  }
  override void beforeH5(STRINGAA options = null) { 
      super.beforeH5(options);

      if (active) myClasses ~= ["active", "show"];
      if (border) myClasses ~= ["border-"~border];
      if (borderColor) myClasses ~= ["border-"~borderColor];
  }

  override DH5Obj[] toH5(STRINGAA options = null) { 
      DH5Obj[] results = super.toH5(options);

      return results~
        H5Div(id, myClasses, myAttributes,
        (showHeader && header ? header : null)
        ~myContent~
        (showFooter && footer ? footer : null)
      );
  }
}
auto UIMTabPaneControl() { return new DUIMTabPaneControl; }
auto UIMTabPane() { return new DUIMTabPaneControl; }
