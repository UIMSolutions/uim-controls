module uim.controls.factes.filter;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMFacetFilterControl : DUIMControl {
  mixin(ControlThis!("UIMFacetFilterControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("facet-filter");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFacetFilterControl", "DUIMFacetFilterControl"));
mixin(ControlCalls!("UIMFacetFilter", "DUIMFacetFilterControl"));

version(test_uim_controls) { unittest {
  assert(UIMFacetFilter);
  assert(UIMFacetFilter.noId == `<div class="facet-filter"></div>`);
}}
