module web.controls.navs.links.toggle;

@safe: 
import web.controls;

class DUIMNavLinkToggleControl : DUIMControl {
  mixin(ControlThis!("UIMNavLinkToggleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("nav-link-toggle");
  }

  mixin(OProperty!("string", "toggle"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMNavLinkToggleControl", "DUIMNavLinkToggleControl"));
mixin(ControlCalls!("UIMNavLinkToggle", "DUIMNavLinkToggleControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavLinkToggle);
  assert(UIMNavLinkToggle.noId == `<div class="nav-link-toggle"></div>`);
}}
