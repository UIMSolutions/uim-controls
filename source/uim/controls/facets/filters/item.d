module uim.controls.factes.filters.item;

@safe: 
import uim.controls;

class DUIMFacetFilterItemControl : DUIMControl {
  mixin(ControlThis!("UIMFacetFilterItemControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("facet-filter-item");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFacetFilterItemControl", "DUIMFacetFilterItemControl"));
mixin(ControlCalls!("UIMFacetFilterItem", "DUIMFacetFilterItemControl"));

version(test_uim_controls) { unittest {
  assert(UIMFacetFilterItem);
  assert(UIMFacetFilterItem.noId == `<div class="facet-filter-item"></div>`);
}}
