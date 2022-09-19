module uim.controls.empties.empty;

@safe: 
import uim.controls;

class DUIMEmptyControl : DUIMDivControl {
  mixin(ControlThis!("UIMEmptyControl"));

  mixin(OProperty!("string", "color"));

  mixin(AddContent!("Icon", "UIMEmptyIcon"));
  mixin(AddContent!("Title", "UIMEmptyTitle"));
  mixin(AddContent!("Header", "UIMEmptyHeader"));
  mixin(AddContent!("Subtitle", "UIMEmptySubtitle"));
  mixin(AddContent!("Action", "UIMEmptyAction"));
  mixin(AddContent!("Image", "UIMEmptyImage"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) myClasses ~= "bg-"~color;
  }
}
mixin(ControlCalls!("UIMEmptyControl", "DUIMEmptyControl"));
mixin(ControlCalls!("UIMEmpty", "DUIMEmptyControl"));

version(test_uim_controls) { unittest {
  assert(UIMEmpty);
  assert(UIMEmpty.noId == `<div class="empty"></div>`);
  assert(UIMEmpty.noId()(UIMEmptyIcon.noId) == `<div class="empty"><div class="empty-icon"></div></div>`);
}}
