module uim.controls.toolbars.groups.button;

@safe: 
import uim.controls;

class DUIMButtonGroupControl : DUIMControl {
  mixin(ControlThis!("UIMButtonGroup"));

  override void initialize() {
    super.initialize;

    this
      .classes("btn-group")
      .attributes(["role":"group"]);
  }

  mixin(OProperty!("DUIMButtonControl[]", "buttons"));
  O buttons(this O)(DUIMButtonControl[] newButtons...) {
    this.buttons(newButtons.dup);
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (ariaLabel) myAttributes["aria-label"] = this.ariaLabel;

    if (buttons) {
      myContent = buttons.map!(button => button.toH5).join;
    }
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMButtonGroupControl", "DUIMButtonGroupControl"));
mixin(ControlCalls!("UIMButtonGroup", "DUIMButtonGroupControl"));

version(test_uim_controls) { unittest {
  assert(UIMButtonGroup);
  assert(UIMButtonGroup.noId == `<div class="btn-group" role="group"></div>`);
}}