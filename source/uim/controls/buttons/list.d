module uim.controls.buttons.list;

@safe: 
import uim.controls;

class DUIMButtonListControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DUIMButtonControl[]", "buttons"));
  O buttons(this O)(DUIMButtonControl[] newButtons...) { 
    this.buttons(newButtons); 
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["btn-list"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    return [H5Div(["btn-list"], buttons.map!(button => button.toH5(options)).join)].toH5;  
  }
}
auto UIMButtonListControl() { return new DUIMButtonListControl; }