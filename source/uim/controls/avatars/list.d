module uim.controls.avatars.list;

@safe: 
import uim.controls;

class DUIMAvatarListControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this.classes(["avatar-list"]);
  }

  mixin(OProperty!("DUIMAvatarControl[]", "avatars"));
  mixin(OProperty!("bool", "stacked"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    auto bufClasses = this.classes.dup;
    if (stacked) bufClasses ~= "avatar-list-stacked"; 

    results ~= H5Div(
      bufId, 
      bufClasses, 
      bufAttributes, 
      avatars.map!(avatar => avatar.toH5(options)).array.join); 

    return results;
  }
}