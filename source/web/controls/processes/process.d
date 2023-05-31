module web.controls.processes.process;

@safe: 
import web.controls;

class DUIMProcessControl : DUIMControl {
  mixin(ControlThis!("UIMProcessControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("process");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMProcessControl", "DUIMProcessControl"));
mixin(ControlCalls!("UIMProcess", "DUIMProcessControl"));

version(test_uim_controls) { unittest {
  assert(UIMProcess);
  assert(UIMProcess.noId == `<div class="process"></div>`);
}}
