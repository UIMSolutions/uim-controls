module uim.controls.shells.shell;

@safe: 
import uim.controls;

class DUIMShellControl : DUIMDivControl {
  mixin(ControlThis!("UIMShellControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("shell");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMShellControl", "DUIMShellControl"));
mixin(ControlCalls!("UIMShell", "DUIMShellControl"));

version(test_uim_controls) { unittest {
  assert(UIMShell);
  assert(UIMShell.noId == `<div class="shell"></div>`);
}}
