module uim.controls.pageheaders.pageheader;

@safe: 
import uim.controls;

class DUIMPageHeaderControl : DUIMControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {

    return [myModal(myDialog(myContent))].toH5;
  }
}
auto UIMPageHeaderControl() { return new DUIMPageHeaderControl; }