module uim.controls.buttons.list;

@safe: 
import uim.controls;

class DUIMButtonListControl : DUIMContainerControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .classes(["btn-list"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);  
  }
}
auto UIMButtonListControl() { return new DUIMButtonListControl; }
auto UIMButtonList() { return new DUIMButtonListControl; }

version(test_uim_controls) {
  unittest {
    assert(UIMButtonList);
}}
