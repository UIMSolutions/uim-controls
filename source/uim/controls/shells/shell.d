module uim.controls.shells.shell;

@safe: 
import uim.controls;

class DUIMShellControl : DUIMControl {
  mixin(ControlThis!("UIMShellControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("shell");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMShellControl", "DUIMShellControl"));
mixin(ControlCalls!("UIMShell", "DUIMShellControl"));

version(test_uim_controls) { unittest {
<<<<<<< HEAD
    assert(UIMShell);
    assert(UIMShell.noId == ``);
  }
}

=======
  assert(UIMShell);
  assert(UIMShell.noId == `<div class="shell"></div>`);
}}
