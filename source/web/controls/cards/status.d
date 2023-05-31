module web.controls.cards.status;

@safe: 
import web.controls;

class DUIMCardStatusControl : DUIMDivControl {
  mixin(ControlThis!("UIMCardStatusControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["card-status"]);
  }

  mixin(OProperty!("string", "position"));
  mixin(OProperty!("string", "color"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (position) myClasses ~= "card-status-"~position;
    if (color) myClasses ~= "bg-"~color;      
  }
}
mixin(ControlCalls!("UIMCardStatusControl", "DUIMCardStatusControl"));
mixin(ControlCalls!("UIMCardStatus", "DUIMCardStatusControl"));

version(test_uim_controls) { unittest {
  assert(UIMCardStatus);
  assert(UIMCardStatus.noId == `<div class="card-status"></div>`);
}}