module uim.controls.bars.bar;

@safe:
import uim.controls;

class DUIMBarControl : DUIMControl {
  mixin(ControlThis!("UIMBarControl"));
  
  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMBarControl", "DUIMBarControl"));
mixin(ControlCalls!("UIMBar", "DUIMBarControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMBar);

    auto control = UIMBar;
    // TODO
  }
}
