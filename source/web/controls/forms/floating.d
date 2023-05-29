module uim.controls.forms.floating;

@safe: 
import uim.controls;

class DUIMFormFloatingControl : DUIMFormControl {
  mixin(ControlThis!("UIMFormFloatingControl"));

  mixin(OProperty!("string", "title"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("form-floating");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (this.title) myContent ~= H5Label(["for":myId], title);
  }
}
mixin(ControlCalls!("UIMFormFloatingControl", "DUIMFormFloatingControl"));
mixin(ControlCalls!("UIMFormFloating", "DUIMFormFloatingControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormFloating);
  assert(UIMFormFloating.noId == `<form class="form form-floating"></form>`);
}}
