module uim.controls.labels.label;

@safe: 
import uim.controls;

class DUIMLabelControl : DUIMControl {
  mixin(ControlThis!("UIMLabelControl"));

  mixin(OProperty!("string", "forId"));

  override void initialize() {
    super.initialize;

    this
      .classes("label");
  }

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
mixin(ControlCalls!("UIMLabel", "DUIMLabelControl")"));

version(test_uim_controls) { unittest {
    assert(UIMLabel);
    assert(UIMLabel.noId == '<label class="label"><label>');
}}
