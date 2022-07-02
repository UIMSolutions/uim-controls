module uim.controls.tooltips.tooltip;

@safe: 
import uim.controls;

class DUIMTooltipControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMTooltipControl() { return new DUIMTooltipControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}
