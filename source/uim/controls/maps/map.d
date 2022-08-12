module uim.controls.maps.map;

@safe: 
import uim.controls;

class DUIMMapControl : DUIMControl {
  mixin(ControlThis!("UIMMapControl"));

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMMapControl", "DUIMMapControl"));
mixin(ControlCalls!("UIMMap", "DUIMMapControl"));

version(test_uim_controls) { unittest {
    assert(UIMMap);

    auto control = UIMMap;
  }
}