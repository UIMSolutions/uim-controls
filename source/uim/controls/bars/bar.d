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
    super.toH5(options);
    
    return [
      H5Div(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
mixin(ControlCalls!("UIMBarControl", "DUIMBarControl"));
mixin(ControlCalls!("UIMBar", "DUIMBarControl"));

version(test_uim_controls) { unittest {
    assert(UIMBar);
  }
}
