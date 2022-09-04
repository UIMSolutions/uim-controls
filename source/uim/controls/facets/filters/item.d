module uim.controls.factes.filters.item;

@safe: 
import uim.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMLinkControl : DUIMControl {
  mixin(ControlThis!("UIMLinkControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("link");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMLinkControl", "DUIMLinkControl"));
mixin(ControlCalls!("UIMLink", "DUIMLinkControl"));

version(test_uim_controls) { unittest {
  assert(UIMLink);
  assert(UIMLink.noId == `<div class="link"></div>`);
}}
