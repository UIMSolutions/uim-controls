module web.controls.forms.check;

@safe: 
import web.controls;

class DUIMFormCheckControl : DUIMDivControl {
  mixin(ControlThis!("UIMFormCheckControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-check"]);
  }

  mixin(OProperty!("bool", "inline"));
  mixin(OProperty!("bool", "reverse"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (inline) myClasses ~= "form-check-inline";
    if (reverse) myClasses ~= "form-check-reverse";
  }
}
mixin(ControlCalls!("UIMFormCheckControl", "DUIMFormCheckControl"));
mixin(ControlCalls!("UIMFormCheck", "DUIMFormCheckControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormCheck);
  assert(UIMFormCheck.noId == `<div class="form-check"></div>`);
  assert(UIMFormCheck.inline(true).noId == `<div class="form-check form-check-inline"></div>`);
  assert(UIMFormCheck.reverse(true).noId == `<div class="form-check form-check-reverse"></div>`);
}}
