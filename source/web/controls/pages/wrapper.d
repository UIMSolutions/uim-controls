module web.controls.pages.wrapper;

@safe:
import web.controls;

class DUIMPageWrapperControl : DUIMDivControl {
  mixin(ControlThis!("UIMPageWrapperControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("page-wrapper");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);    
  }
}
mixin(ControlCalls!("UIMPageWrapperControl", "DUIMPageWrapperControl"));
mixin(ControlCalls!("UIMPageWrapper", "DUIMPageWrapperControl"));

version(test_uim_controls) { unittest {
  assert(UIMPageWrapper);
  assert(UIMPageWrapper.noId == `<div class="page-wrapper"></div>`);
}}