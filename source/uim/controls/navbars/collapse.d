module uim.controls.navbars.collapse;

@safe: 
import uim.controls;

class DUIMNavbarCollapseControl : DUIMCollapseControl {
  mixin(ControlThis!("UIMNavbarCollapseControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("navbar-collapse");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);
        
    return [ 
      H5Ul(myId, myClasses, myAttributes, myContent)    
    ].toH5; 
  }
}
mixin(ControlCalls!("UIMNavbarCollapseControl", "DUIMNavbarCollapseControl"));
mixin(ControlCalls!("UIMNavbarCollapse", "DUIMNavbarCollapseControl"));

version(test_uim_controls) { unittest {
  assert(UIMNavbarCollapse);
  assert(UIMNavbarCollapse.noId == `<div class="collapse navbar-collapse"></div>`);
}}
