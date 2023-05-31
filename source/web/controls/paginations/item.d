module web.controls.paginations.item;

@safe:
import web.controls;

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
    super.toH5(options);

    if (link) {
      myContent = [BS5PageLink((textColor ? ["text-"~textColor] : null), ["href": link], (icon ? H5String(tablerIcon(icon)) : null)~myContent)].toH5;
    }
    return [BS5PageItem(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMPageItemControl", "DUIMPageItemControl"));
mixin(ControlCalls!("UIMPageItem", "DUIMPageItemControl"));

version(test_uim_controls) { unittest {
    assert(UIMPageItem);
    assert(UIMPageItem.noId == `<li class="page-item"></li>`);

    mixin(TestControlStringAttributes!("UIMPageItem", [
      "color", "icon", "link", "textColor"]));    
  }
}

