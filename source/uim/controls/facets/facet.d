module uim.controls.facets.facet;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMFacetControl : DUIMControl {
  mixin(ControlThis!("UIMFacetControl"));

  override void initialize() {
    super.initialize;

    this 
      .classes("facet");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFacetControl", "DUIMFacetControl"));
mixin(ControlCalls!("UIMFacet", "DUIMFacetControl"));

version(test_uim_controls) { unittest {
  assert(UIMFacet);
  assert(UIMFacet.noIid == `<div class="facet"></div>`);
}}
