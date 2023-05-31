module web.controls.forms.handler;

@safe: 
import web.controls;

class DUIMFormHandlerControl : DUIMControl {
  mixin(ControlThis!("UIMFormHandlerControl"));

  override void initialize() {
    super.initialize;
  }
}
mixin(ControlCalls!("UIMFormHandlerControl", "DUIMFormHandlerControl"));
mixin(ControlCalls!("UIMFormHandler", "DUIMFormHandlerControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormHandler);
}}
