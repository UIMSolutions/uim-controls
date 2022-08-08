module uim.controls.shells.shell;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMShellControl : DUIMControl {
  mixin(ControlThis!("UIMShellControl"));

  override void initialize() {
    super.initialize;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMShellControl", "DUIMShellControl"));
mixin(ControlCalls!("UIMShell", "DUIMShellControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMShell);

    auto control = UIMShell;
  }
}
