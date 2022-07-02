module uim.controls.datagrids.item;

@safe: 
import uim.controls;

class DUIMDatagridItemControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "titleColor"));
  mixin(OProperty!("string", "titlePosition"));

  override void initialize() {
    super.initialize;

    this
      .classes(["datagrid-item"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    DH5Obj[] results = super.toH5(options);

    switch(titlePosition) {
      case "bottom": 
        myContent = 
          [(content ? H5Div(["datagrid-content"], content) : null),
          (title ? H5Div(["datagrid-title"]~(titleColor ? "text-"~titleColor : null), title) : null)];
          break;
      default:
        myContent = 
          [(title ? H5Div(["datagrid-title"]~(titleColor ? "text-"~titleColor : null), title) : null),
          (content ? H5Div(["datagrid-content"], content) : null)];
          break;
    }

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMDatagridItemControl() { return new DUIMDatagridItemControl; }
auto UIMDatagridItem() { return new DUIMDatagridItemControl; }

version(test_uim_controls) {
  unittest {
  }
}
