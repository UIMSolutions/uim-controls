module web.controls.pages.body_;

@safe:
import web.controls;

class DUIMPageBodyControl : DUIMDivControl {
  mixin(ControlThis!("UIMPageBodyControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("page-body");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }
}
mixin(ControlCalls!("UIMPageBodyControl", "DUIMPageBodyControl"));
mixin(ControlCalls!("UIMPageBody", "DUIMPageBodyControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageBody);
  assert(UIMPageBody.noId == `<div class="page-body"></div>`);
}}