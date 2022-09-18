module uim.controls.empties.image;

@safe: 
import uim.controls;

class DUIMEmptyImageControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyImageControl"));

  override void initialize() {
    super.initialize;


    this
      .classes(["empty-img"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptyImageControl", "DUIMEmptyImageControl"));
mixin(ControlCalls!("UIMEmptyImage", "DUIMEmptyImageControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmptyImage);
  assert(UIMEmptyImage.noId == `<div class="facet-filter-item"></div>`);
}}