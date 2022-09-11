module uim.controls.footers.footer;

@safe: 
import uim.controls;

class DUIMFooterControl : DUIMControl {
  mixin(ControlThis!("UIMFooterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("footer");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFooterControl", "DUIMFooterControl"));
mixin(ControlCalls!("UIMFooter", "DUIMFooterControl"));

version(test_uim_controls) { unittest {
  assert(UIMFooter);
  assert(UIMFooter.noId == `<div class="footer"></div>`);
}}
