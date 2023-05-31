module web.controls.pages.pretitle;

@safe: 
import web.controls;

class DUIMPagePretitleControl : DUIMControl {
  mixin(ControlThis!("UIMPagePretitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["page-pretitle"]);
  }
  
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMPagePretitleControl", "DUIMPagePretitleControl"));
mixin(ControlCalls!("UIMPagePretitle", "DUIMPagePretitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMPagePretitle);
  assert(UIMPagePretitle.noId == `<div class="page-pretitle"></div>`);
}}