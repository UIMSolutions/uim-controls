module uim.controls.factes.filters.list;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMFacetFilterListControl : DUIMControl {
  mixin(ControlThis!("UIMFacetFilterListControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFacetFilterListControl", "DUIMFacetFilterListControl"));
mixin(ControlCalls!("UIMFacetFilterList", "DUIMFacetFilterListControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFacetFilterList);

    auto control = UIMFacetFilterList;
  }
}
