module web.controls.buttons.list;

@safe: 
import web.controls;

class DUIMButtonListControl : DUIMDivControl {
  mixin(ControlThis!("UIMButtonListControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["btn-list"]);
  }

  mixin(OProperty!("DUIMButtonControl[]", "buttons"));
  O buttons(this O)(DUIMButtonControl[] newButtons...) {
    this.buttons(newButtons.dup);
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {   
    super.beforeH5(options);

    if (buttons) {
      myContent = buttons.map!(b => b.toH5).join.array;
    }
  }
}
mixin(ControlCalls!("UIMButtonListControl", "DUIMButtonListControl"));
mixin(ControlCalls!("UIMButtonList", "DUIMButtonListControl"));

version(test_uim_controls) { unittest {
    assert(UIMButtonList);
    assert(UIMButtonList.noId == `<div class="btn-list"></div>`);
}}

