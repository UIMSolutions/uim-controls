module uim.controls.paginations.item;

@safe:
import uim.controls;

class DUIMPageItemControl : DUIMControl {
  mixin(ControlThis!("UIMPageItemControl"));

/*   mixin(OProperty!("bool", "active"));
  mixin(OProperty!("bool", "disabled")); */
  mixin(OProperty!("string", "link"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "textColor"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    

    if (color) myClasses ~= "bg-"~color.toLower;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5PageItem(myId, myClasses, myAttributes, 
        BS5PageLink((textColor ? ["text-"~textColor] : null), ["href": link], (icon ? H5String(tablerIcon(icon)) : null)~myContent))
      .active(active)
      .disabled(disabled);
  }
}
mixin(ControlCalls!("UIMPageItemControl", "DUIMPageItemControl"));
mixin(ControlCalls!("UIMPageItem", "DUIMPageItemControl"));

version(test_uim_controls) {
  unittest {
    // TODO
  }
}

