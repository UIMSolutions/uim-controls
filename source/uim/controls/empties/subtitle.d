module uim.controls.empties.subtitle;

@safe: 
import uim.controls;

class DUIMEmptySubtitleControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptySubtitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-subtitle"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5P(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMEmptySubtitleControl", "DUIMEmptySubtitleControl"));
mixin(ControlCalls!("UIMEmptySubtitle", "DUIMEmptySubtitleControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmptySubtitle);
  assert(UIMEmptySubtitle.noId == `<div class="facet-filter-item"></div>`);
}}