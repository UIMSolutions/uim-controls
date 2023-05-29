module uim.controls.layouts.layout;

@safe: 
import uim.controls;

class DUIMLayoutControl : DUIMDivControl {
  mixin(ControlThis!("UIMLayoutControl"));
}
mixin(ControlCalls!("UIMLayoutControl", "DUIMLayoutControl"));
mixin(ControlCalls!("UIMLayout", "DUIMLayoutControl"));
