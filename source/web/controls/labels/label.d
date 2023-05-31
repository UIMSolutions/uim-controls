module web.controls.labels.label;

@safe: 
import web.controls;

class DUIMLabelControl : DUIMControl {
  mixin(ControlThis!("UIMLabelControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("label");
  }

  mixin(OProperty!("string", "forId"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (forId) myAttributes["for"] = forId;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Label(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMLabelControl", "DUIMLabelControl"));
mixin(ControlCalls!("UIMLabel", "DUIMLabelControl"));

version(test_uim_controls) { unittest {
  assert(UIMLabel);
  assert(UIMLabel.noId == `<label class="label"></label>`);
}}
