module uim.controls.factes.filter;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMFacetFilterControl : DUIMControl {
  mixin(ControlThis!("UIMFacetFilterControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMFacetFilterControl", "DUIMFacetFilterControl"));
mixin(ControlCalls!("UIMFacetFilter", "DUIMFacetFilterControl"));

version(test_uim_controls) { unittest {
    assert(UIMFacetFilter);

    auto control = UIMFacetFilter;
  }
}
