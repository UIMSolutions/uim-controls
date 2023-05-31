module web.controls.navs.links.title;

@safe: 
import web.controls;

class DUIMNavLinkTitleControl : DUIMControl {
  mixin(ControlThis!("UIMNavLinkTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("nav-link-title");
  }

  mixin(OProperty!("string", "title"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (title) myContent ~= H5String(title);
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
  assert(UIMNavLinkTitle.noId == `<span class="nav-link-title"></span>`);
  assert(UIMNavLinkTitle.title("newTitle").noId == `<span class="nav-link-title">newTitle</span>`);
  assert(UIMNavLinkTitle("newTitle").noId == `<span class="nav-link-title">newTitle</span>`);
}}
