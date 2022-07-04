module uim.controls.avatars.list;

@safe: 
import uim.controls;

class DUIMAvatarListControl : DUIMContainerControl {
  mixin(ControlThis!("UIMAvatarListControl");

  override void initialize() {
    super.initialize;

    this.classes(["avatar-list"]);
  }

  mixin(OProperty!("bool", "stacked"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    if (stacked) myClasses ~= "avatar-list-stacked"; 

    return results~
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);  
  }
}
mixin(ControlCalls!("UIMAvatarListControl", "DUIMAvatarListControl"));
mixin(ControlCalls!("UIMAvatarList", "DUIMAvatarListControl"));

version(test_uim_controls) {
  unittest {
    auto control = UIMAvatarList;
  }
}
