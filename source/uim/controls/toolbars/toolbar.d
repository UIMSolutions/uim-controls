module uim.controls.toolbars.toolbar;

@safe: 
import uim.controls;

class DUIMToolbarControl : DUIMControl {
  mixin(ControlThis!("UIMToolbar"));

  override void initialize() {
    super.initialize;

    this
      .classes("btn-toolbar")
      .attributes(["role":"toolbar"]);
  }

  mixin(OProperty!("DUIMButtonGroupControl[]", "groups"));
  O groups(this O)(DUIMButtonGroupControl[] newGroups...) {
    this.groups(newGroups.dup);
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (ariaLabel) myAttributes["aria-label"] = this.ariaLabel;
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMToolbarControl", "DUIMToolbarControl"));
mixin(ControlCalls!("UIMToolbar", "DUIMToolbarControl"));

version(test_uim_controls) { unittest {
    assert(UIMToolbar);
    assert(UIMToolbar.noId == `<div class="btn-toolbar" role="toolbar"></div>`);
  }
}
