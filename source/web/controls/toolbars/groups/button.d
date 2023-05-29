module uim.controls.toolbars.groups.button;

@safe: 
import uim.controls;

class DUIMButtonGroupControl : DUIMDivControl {
  mixin(ControlThis!("UIMButtonGroup"));

  override void initialize() {
    super.initialize;

    this
      .attributes(["role":"group"]);
  }

  mixin(OProperty!("DUIMButtonControl[]", "buttons"));
  O buttons(this O)(DUIMButtonControl[] newButtons...) {
    this.buttons(newButtons.dup);
    return cast(O)this;
  }

  O addButtons(this O)(DUIMButtonControl[] newButtons...) {
    this.addButtons(newButtons.dup);
    return cast(O)this;
  }
  O addButtons(this O)(DUIMButtonControl[] newButtons) {
    this.buttons(this.buttons~newButtons);
    return cast(O)this;
  }

  mixin(OProperty!("string", "size")); // sm, small, lg, large
  mixin(OProperty!("bool", "vertical")); 

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses ~= vertical ? "btn-group-vertical" : "btn-group"; 
    switch(size) {
      case "sm", "small": myClasses ~= "btn-group-sm"; break;
      case "lg", "large": myClasses ~= "btn-group-lg"; break;
      default: break;
    }

    if (ariaLabel) myAttributes["aria-label"] = this.ariaLabel;

    if (buttons) {
      myContent = buttons.map!(button => button.toH5).join;
    }
  }

}
mixin(ControlCalls!("UIMButtonGroupControl", "DUIMButtonGroupControl"));
mixin(ControlCalls!("UIMButtonGroup", "DUIMButtonGroupControl"));

version(test_uim_controls) { unittest {
  assert(UIMButtonGroup);
  assert(UIMButtonGroup.noId == `<div class="btn-group" role="group"></div>`);
  assert(UIMButtonGroup.buttons(UIMButton.noId).noId == `<div class="btn-group" role="group"></div>`);
  assert(UIMButtonGroup.addButtons(UIMButton.noId).noId == `<div class="btn-group" role="group"></div>`);
  assert(UIMButtonGroup.buttons(UIMButton.noId).addButtons(UIMButton.noId).noId == `<div class="btn-group" role="group"></div>`);
}}