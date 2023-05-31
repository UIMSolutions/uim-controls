module web.controls.toolbars.toolbar;

@safe: 
import web.controls;

class DUIMToolbarControl : DUIMDivControl {
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

  O addGroups(this O)(DUIMButtonGroupControl[] newGroups...) {
    this.addGroups(newGroups.dup);
    return cast(O)this;
  }
  O addGroups(this O)(DUIMButtonGroupControl[] newGroups) {
    this.groups(this.groups~newGroups);
    return cast(O)this;
  }

  O buttons(this O)(DUIMButtonControl[][] newButtons...) {
    this.buttons(newButtons.dup);
    return cast(O)this;
  }
  O buttons(this O)(DUIMButtonControl[][] newButtons) {
    this.groups(
      newButtons.map!(bGroup => UIMButtonGroupControl.buttons(bGroup)).array);
    return cast(O)this;
  }

  O addButtons(this O)(DUIMButtonControl[][] newButtons...) {
    this.addButtons(newButtons.dup);
    return cast(O)this;
  }
  O addButtons(this O)(DUIMButtonControl[][] newButtons) {
    this.addGroups(
      newButtons.map!(bGroup => UIMButtonGroupControl.addButtons(bGroup)).array);
    return cast(O)this;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (ariaLabel) myAttributes["aria-label"] = this.ariaLabel;

    if (groups) {
      myContent = groups.toH5;
    }
  }
}
mixin(ControlCalls!("UIMToolbarControl", "DUIMToolbarControl"));
mixin(ControlCalls!("UIMToolbar", "DUIMToolbarControl"));

version(test_uim_controls) { unittest {
  assert(UIMToolbar);
  assert(UIMToolbar.noId == `<div class="btn-toolbar" role="toolbar"></div>`);
  assert(UIMToolbar.groups(UIMButtonGroup.noId).noId == `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`);
  assert(UIMToolbar.addGroups(UIMButtonGroup.noId).noId == `<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"></div></div>`);
  writeln(UIMToolbar.addButtons([[UIMButton.noId]]).noId);
}}
