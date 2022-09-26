module uim.controls.navs.links.icon;

@safe: 
import uim.controls;

class DUIMNavLinkIconControl : DUIMControl {
  mixin(ControlThis!("UIMNavLinkIconControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("nav-link-icon");
  }

  mixin(OProperty!("string", "icon"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (icon) {
      myContent ~= H5String(tablerIcon(icon));
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMNavLinkIconControl", "DUIMNavLinkIconControl"));
mixin(ControlCalls!("UIMNavLinkIcon", "DUIMNavLinkIconControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavLinkIcon);
  assert(UIMNavLinkIcon.noId == `<span class="nav-link-icon"></span>`);
}}
