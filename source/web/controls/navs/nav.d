module web.controls.navs.nav;

@safe: 
import web.controls;

class DUIMNavControl : DUIMControl {
  mixin(ControlThis!("UIMNavControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["nav"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Ul(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMNavControl", "DUIMNavControl"));
mixin(ControlCalls!("UIMNav", "DUIMNavControl"));

version(test_uim_controls) { unittest {
  assert(UIMNav);
  assert(UIMNav.noId == `<ul class="nav"></ul>`);
}}
