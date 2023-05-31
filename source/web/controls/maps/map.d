module web.controls.maps.map;

@safe: 
import web.controls;

class DUIMMapControl : DUIMControl {
  mixin(ControlThis!("UIMMapControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("map");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMMapControl", "DUIMMapControl"));
mixin(ControlCalls!("UIMMap", "DUIMMapControl"));

version(test_uim_controls) { unittest {
  assert(UIMMap);
  assert(UIMMap.noId == `<div class="map"></div>`);
}}