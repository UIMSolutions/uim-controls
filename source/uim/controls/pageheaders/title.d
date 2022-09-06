module uim.controls.pageheaders.title;

@safe: 
import uim.controls;

class DUIMPageTitleControl : DUIMControl {
  mixin(ControlThis!("UIMPageTitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["page-title"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
 
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMPageTitleControl", "DUIMPageTitleControl"));
mixin(ControlCalls!("UIMPageTitle", "DUIMPageTitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageTitle);
  assert(UIMPageTitle.noId == `<div class="page-title"></div>`);
}}