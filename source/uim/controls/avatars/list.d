module uim.controls.avatars.list;

@safe: 
import uim.controls;

class DUIMAvatarListControl : DUIMControl {
  mixin(ControlThis!("UIMAvatarListControl"));

  override void initialize() {
    super.initialize;

    this.classes(["avatar-list"]);
  }

  mixin(OProperty!("bool", "stacked"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (stacked) myClasses ~= "avatar-list-stacked"; 

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMAvatarListControl", "DUIMAvatarListControl"));
mixin(ControlCalls!("UIMAvatarList", "DUIMAvatarListControl"));

version(test_uim_controls) { unittest {
  assert(UIMAvatarList);
  assert(UIMAvatarList.noId == `<div class="avatar-list"></div>`);
}}
