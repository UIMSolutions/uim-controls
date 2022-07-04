module uim.controls.datagrids.datagrid;

@safe: 
import uim.controls;

class DUIMDatagridControl : DUIMControl {
  mixin(ControlThis!("UIMDatagridControl"));

  protected DUIMControl[] _items;  
  DUIMControl[] items(this O)() {
    return _items;
  }
  O items(this O)(DUIMControl[] newItems) {
    _items = newItems;
    _items.each!(item => item.parent(this));
    return cast(O)this;
  }
  O items(this O)(DUIMControl[] newItems...) { 
    this.items(newItems); 
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent~items.map!(item => item.toH5(options)).join);  
  }
}
auto UIMDatagridControl() { return new DUIMDatagridControl; }
auto UIMDatagrid() { return new DUIMDatagridControl; }

version(test_uim_controls) {
  unittest {
    assert(UIMDatagrid);
  }
}