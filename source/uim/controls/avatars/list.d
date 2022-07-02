module uim.controls.avatars.list;

@safe: 
import uim.controls;

class DUIMAvatarListControl : DUIMContainerControl {
  this() { super(); }

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
auto UIMAvatarListControl() { return new DUIMAvatarListControl; }
auto UIMAvatarList() { return new DUIMAvatarListControl; }

version(test_uim_controls) {
  unittest {
  }
}
