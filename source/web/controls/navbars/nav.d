module web.controls.navbars.nav;

@safe: 
import web.controls;

class DUIMNavbarNavControl : DUIMControl {
  mixin(ControlThis!("UIMNavbarNavControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("navbar-nav");
  }

  mixin(OProperty!("string", "style"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
        
    switch(style) {
      case "list": return [H5Ul(myId, myClasses, myAttributes, myContent)].toH5;
      default: return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
    }
  }
}
mixin(ControlCalls!("UIMNavbarNavControl", "DUIMNavbarNavControl"));
mixin(ControlCalls!("UIMNavbarNav", "DUIMNavbarNavControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarNav);
  assert(UIMNavbarNav.noId == `<div class="navbar-nav"></div>`);
  assert(UIMNavbarNav.noId.style("list") == `<ul class="navbar-nav"></ul>`);
}}
