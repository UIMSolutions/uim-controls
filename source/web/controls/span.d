module web.controls.span;

@safe: 
import web.controls;

class DUIMSpanControl : DUIMControl {
  mixin(ControlThis!("UIMSpanControl"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [
      H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMSpanControl", "DUIMSpanControl"));
mixin(ControlCalls!("UIMSpan", "DUIMSpanControl"));

version(test_uim_controls) { unittest {
  assert(UIMSpan);
  assert(UIMSpan.noId == `<span></span>`);
}}