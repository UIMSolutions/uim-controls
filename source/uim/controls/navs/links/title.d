module uim.controls.navs.links.title;

@safe: 
import uim.controls;

class DUIMNavLinkTitleControl : DUIMControl {
  mixin(ControlThis!("UIMNavLinkTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("nav-link-icon");
  }

  mixin(OProperty!("string", "icon"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMNavLinkTitleControl", "DUIMNavLinkTitleControl"));
mixin(ControlCalls!("UIMNavLinkTitle", "DUIMNavLinkTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavLinkTitle);
  assert(UIMNavLinkTitle.noId == `<span class="nav-link-icon"></span>`);
}}
