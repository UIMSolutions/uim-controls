module uim.controls.forms.description;

@safe: 
import uim.controls;

class DUIMFormLabelDescriptionControl : DUIMControl {
  mixin(ControlThis!("UIMFormLabelDescriptionControl"));


  override void initialize() {
    super.initialize;

    this
      .classes(["form-label-description"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Span(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFormLabelDescriptionControl", "DUIMFormLabelDescriptionControl"));
mixin(ControlCalls!("UIMFormLabelDescription", "DUIMFormLabelDescriptionControl"));

version(test_uim_controls) { unittest {
  assert(UIMFormLabelDescription);
  assert(UIMFormLabelDescription.noId== `<span class="form-label-description"></span>`);
}}
