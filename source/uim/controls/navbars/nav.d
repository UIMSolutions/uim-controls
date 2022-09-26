module uim.controls.navbars.nav;

@safe: 
import uim.controls;

@safe: 
import uim.controls;

class DUIMNavbarNavControl : DUIMControl {
  mixin(ControlThis!("UIMNavbarNavControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("navbar-nav");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
        
    return [ 
      H5Ul(myId, myClassey, myAttributes, myContent)
    ].toH5; 
  }
}
mixin(ControlCalls!("UIMNavbarNavControl", "DUIMNavbarNavControl"));
mixin(ControlCalls!("UIMNavbarNav", "DUIMNavbarNavControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarNav);
  assert(UIMNavbarNav.noId == `<ul class="navbar-nav"></ul>`);
}}
