module uim.controls.rows.row;

@safe: 
import uim.controls;

class DUIMRowControl : DUIMContainerControl {
  this() { super(); }

  mixin(OProperty!("bool", "deck"));

  override void initialize() {
    super.initialize;
    this
      .classes(["row"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (deck) myClasses ~= "row-deck";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMRowControl", "DUIMRowControl"));
mixin(ControlCalls!("UIMRow", "DUIMRowControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMRow);

    auto control = UIMRow;
    // TODO
  }
}
