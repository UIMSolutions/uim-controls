module web.controls.layouts.layout;

@safe: 
import web.controls;

class DUIMLayoutControl : DUIMDivControl {
  mixin(ControlThis!("UIMLayoutControl"));
}
mixin(ControlCalls!("UIMLayoutControl", "DUIMLayoutControl"));
mixin(ControlCalls!("UIMLayout", "DUIMLayoutControl"));
